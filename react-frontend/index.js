const express = require("express");
const cors = require("cors");


/**
* API of Amne Backend SWE/DE Onsite Project
* Nov 30, 2018
* @author Hao Wang hw26@rice.edu
*/

/**
* Connecting to PosgresDB
*/
var pg = require('pg');
var connectionString = "postgres://riceuser:19901990@localhost:5432/ricedb";
var pgClient = new pg.Client(connectionString);
pgClient.connect(err => {
	if (err){
		console.log(err);
		return err;
	}
});

const app = express();

const SELECT_ALL_HOUSES_QUERY = "SELECT * FROM agents;";





app.use(cors());

app.get('/',(req , res) => {
	res.send("Hello from API ;)")
});



/**
* property tax info route
*/
app.get('/property/tax', (req, res) => {
	const {address,zipcode,unit,propertyID} = req.query;
	const address_space = address.split("_").join(" ")
	const GET_PROPERTY_QUERY_1 = `SELECT situs_county,legal_desc,assessed_value,yr_built,parcel_number FROM tax WHERE property_id = '${propertyID}'`;
	const GET_PROPERTY_QUERY_2 = `SELECT situs_county,legal_desc,assessed_value,yr_built,parcel_number FROM tax WHERE full_address = '${address_space}' 
	AND situs_zip = '${zipcode}' AND situs_unit = '${unit}'`;
	const GET_PROPERTY_QUERY_3 = `SELECT situs_county,legal_desc,assessed_value,yr_built,parcel_number FROM tax WHERE full_address = '${address_space}' 
	AND situs_zip = '${zipcode}'`;


	if (propertyID != null && propertyID.length != 0) {
	pgClient.query(GET_PROPERTY_QUERY_1,(err, results) => {
		if (err) {
			return res.send(err)
		}
		else {
			if (results['rows'].length == 0){
				return res.send("no tax info for the property")
			}
			return res.json(results['rows'])
		}
	
	});
	}
	else if (unit != null && unit.length != 0) {
		console.log(address_space,zipcode,unit)
		pgClient.query(GET_PROPERTY_QUERY_2,(err, results) => {
			if (err) {
				return res.send(err)
			}
			else {
				if (results['rows'].length == 0){
					return res.send("no tax info for the property")
				}
				return res.json(results['rows'])
			}
	
		});
	}
	else {
	pgClient.query(GET_PROPERTY_QUERY_3,(err, results) => {
		if (err) {
			return res.send(err)
		}
		else {
			if (results['rows'].length == 0){
				return res.send("no tax info for the property")
			}
			return res.json(results['rows'])
			
		}
	});
	}
});




/**
* listings stats info route
*/
app.get('/listings_stats', (req, res) => {
	const {xcoord,ycoord,radius} = req.query;

	const GET_TOTAL_PROPERTY = `SELECT COUNT(*) AS total_number_of_properties_within_region FROM listings_dump WHERE (lat - ${xcoord}) * (lat - ${xcoord}) +
	(long - ${ycoord}) * (long - ${ycoord}) <= ${radius} * ${radius}`;
	pgClient.query(GET_TOTAL_PROPERTY,(err, results) => {
		if (err) {
			return res.send(err)
		}
		else {
			if (results['rows'].length == 0){
				return res.send("no listings info in the area")
			}
			return res.json(results['rows'])
			
		}
	});

	
});


/**
* listings stats info route group by status
*/
app.get('/listings_stats/by_status', (req, res) => {
	const {xcoord,ycoord,radius} = req.query;

	const GET_TOTAL_PROPERTY_BY_STATUS = `SELECT COUNT(*),status FROM listings_dump WHERE (lat - ${xcoord}) * (lat - ${xcoord}) +
	(long - ${ycoord}) * (long - ${ycoord}) <= ${radius} * ${radius} GROUP BY status`;
	pgClient.query(GET_TOTAL_PROPERTY_BY_STATUS,(err, results) => {
		if (err) {
			return res.send(err)
		}
		else {
			if (results['rows'].length == 0){
				return res.send("no listings info in the area")
			}
			return res.json(results['rows'])
			
		}
	});

	
});



/**
* listings stats info on ALD route
*/
app.get('/listings_stats/ald', (req, res) => {
	const {xcoord,ycoord,radius} = req.query;
	var r = parseInt(radius);

	const GET_TOTAL_PROPERTY_BY_STATUS = `SELECT COUNT(*) FROM listings_dump WHERE (lat - ${xcoord}) * (lat - ${xcoord}) +
	(long - ${ycoord}) * (long - ${ycoord}) <= ${radius} * ${radius} AND status = 'Active'`;
	pgClient.query(GET_TOTAL_PROPERTY_BY_STATUS,(err, results) => {
		if (err) {
			return res.send(err)
		}
		else {
			if (results['rows'].length == 0){
				return res.send("no listings info in the area")
			}
			return res.json({ALD: parseInt(results['rows'][0]['count']) / (r * r * 3.1415926)})
			
		}
	});

	
});



/**
* agent activity history info route
*/
app.get('/agent/activity/previous', (req, res) => {
	const {agent_full_name,agent_mls_id} = req.query;
	const agent_name = agent_full_name.split("_").join(" ")

	const GET_TOTAL_PREVIOUS1 = `SELECT COUNT (DISTINCT agent_contract_date) FROM listings_dump WHERE agent_full_name = '${agent_name}'`;
	const GET_TOTAL_PREVIOUS2 = `SELECT COUNT (DISTINCT agent_contract_date) FROM listings_dump WHERE agent_mls_id = '${agent_mls_id}'`;
	if (agent_name != null && agent_name.length != 0) {
		console.log(agent_name)
		pgClient.query(GET_TOTAL_PREVIOUS1,(err, results) => {
		if (err) {
			return res.send(err)
		}
		else {
			if (results['rows'].length == 0){
				return res.send("no previous activity info for the agent")
			}
			return res.json(results['rows'])
			
		}
	
		});
	}
	else {
	pgClient.query(GET_TOTAL_PREVIOUS2,(err, results) => {
		if (err) {
			return res.send(err)
		}
		else {
			if (results['rows'].length == 0){
				return res.send("no previous activity info for the agent")
			}
			return res.json(results['rows'])
		}
	});
	}
	
});




/**
* agent average listing price info route
*/

app.get('/agent/activity/average_price', (req, res) => {
	const {agent_full_name,agent_mls_id} = req.query;
	const agent_name = agent_full_name.split("_").join(" ")

	const GET_AVG_PRICE1 = `SELECT list_status,list_avg_list_price FROM agents WHERE list_full_name = '${agent_name}'`;
	const GET_AVG_PRICE2 = `SELECT list_status,list_avg_list_price FROM agents WHERE list_mls_id = '${agent_mls_id}'`;
	if (agent_name != null && agent_name.length != 0) {
		pgClient.query(GET_AVG_PRICE1,(err, results) => {
		if (err) {
			return res.send(err)
		}
		else {
			if (results['rows'].length == 0){
				return res.send("no previous activity info for the agent")
			}
			return res.json(results['rows'])
			
		}
	
		});
	}
	else {
	pgClient.query(GET_AVG_PRICE2,(err, results) => {
		if (err) {
			return res.send(err)
		}
		else {
			if (results['rows'].length == 0){
				return res.send("no previous activity info for the agent")
			}
			return res.json(results['rows'])
		}
	});
	}
	
});



/**
* agent total sales percentile info route
*/
app.get('/agent/activity/quantile', (req, res) => {
	const {agent_full_name,agent_mls_id} = req.query;
	const agent_name = agent_full_name.split("_").join(" ")
	console.log(agent_mls_id)

	const GET_QUANTILE1= `WITH q_tb AS (SELECT list_full_name,list_total_sales,PERCENT_RANK() OVER (ORDER BY list_total_sales DESC) FROM agents)
		  SELECT * FROM q_tb WHERE list_full_name = '${agent_name}'`;
	const GET_QUANTILE2= `WITH q_tb AS (SELECT list_mls_id,list_total_sales,PERCENT_RANK() OVER (ORDER BY list_total_sales DESC) FROM agents)
		  SELECT * FROM q_tb WHERE list_mls_id = '${agent_mls_id}'`;
	if (agent_name != null && agent_name.length != 0) {
		pgClient.query(GET_QUANTILE1,(err, results) => {
		if (err) {
			return res.send(err)
		}
		else {
			if (results['rows'].length == 0){
				return res.send("no previous activity info for the agent")
			}
			return res.json(results['rows'])		
		}
	
		});
	}
	else {
	pgClient.query(GET_QUANTILE2,(err, results) => {
		if (err) {
			return res.send(err)
		}
		else {
			if (results['rows'].length == 0){
				return res.send("no previous activity info for the agent")
			}
			return res.json(results['rows'])
		}
	});
	}
	
});






/**
* property history info route
*/
app.get('/property/value', (req, res) => {
	const {address,mls_id} = req.query;
	const address_space = address.split("_").join(" ")
	const mls_id_ = mls_id + '.0'

	const GET_VALUE_HISTORY1 = `WITH listing_tb as (SELECT mls_number from listings_dump where address = '${address_space}')
								SELECT CAST(timestamp as timestamp), avm_low,avm_mid,avm_high FROM valuations RIGHT JOIN
								listing_tb ON listing_tb.mls_number = valuations.mlsn`;
	const GET_VALUE_HISTORY2 = `SELECT CAST(timestamp as timestamp) ,avm_low,avm_mid,avm_high FROM valuations where mlsn = '${mls_id_}' order by timestamp`;
	
	if (address_space != null && address_space.length != 0) {
		pgClient.query(GET_VALUE_HISTORY1,(err, results) => {
		if (err) {
			return res.send(err)
		}
		else {
			if (results['rows'].length == 0){
				return res.send("no previous valuation info for the property")
			}
			return res.json(results['rows'])
			
		}
	
		});
	}
	else {
	pgClient.query(GET_VALUE_HISTORY2,(err, results) => {
		if (err) {

			return res.send(err)
		}
		else {
			if (results['rows'].length == 0){
				return res.send("no previous valuation info for the property")
			}
			return res.json(results['rows'])
			
		}
	});
	}
	
});


/**
* property history info route by offerID
*/
app.get('/property/value/offerID', (req, res) => {
	const {offerID} = req.query;

	const GET_OFFER_INFO = `WITH offer_tb AS (SELECT ofr_id,address,user_name,user_email,listing_mls_number,date_request,zipcode
	FROM offer_requests where ofr_id = '${offerID}'),
	valuation_tb AS (SELECT * FROM valuations where ofr_id = '${offerID}'),
	offer_tb_time AS (SELECT ofr_id,CAST (timestamp AS timestamp) from valuation_tb),
	offer_tb_recent AS (SELECT ofr_id, MAX (timestamp) AS most_recent from offer_tb_time GROUP BY ofr_id)
	SELECT offer_tb.ofr_id,offer_tb.address,offer_tb.user_name,offer_tb.user_email,offer_tb.date_request,offer_tb.zipcode,valuation_tb.timestamp,
	valuation_tb.avm_mid,valuation_tb.avm_high,valuation_tb.avm_low,valuation_tb.property_id,valuation_tb.mlsn,most_recent
	from offer_tb LEFT JOIN valuation_tb on offer_tb.ofr_id = valuation_tb.ofr_id LEFT JOIN offer_tb_recent on offer_tb_recent.ofr_id = offer_tb.ofr_id`;;
	pgClient.query(GET_OFFER_INFO,(err, results) => {
	if (err) {
		return res.send(err)
	}
	else {
		if (results['rows'].length == 0){
				return res.send("no valuations info for the offer")
		}
		return res.json(results['rows'])
	}

	});
});



/**
* property description and tax info route
*/

app.get('/property/tax-mls-link', (req, res) => {
	const {mls,tax_p_ID} = req.query;

	const GET_PROPERTY_INFO1 = `WITH 

	listing_tb as (SELECT 
	address,
	subdiv_name,
    property_subtype,
    sqft_total,
    lot_size_acres,
    beds_total,
    baths_half,
    baths_full,
    agent_mls_id,
    agent_full_name,
    agent_contract_date AS most_recent_date,
    status
	FROM listings_dump WHERE mls_number = ${mls} ORDER BY agent_contract_date LIMIT 1),
	listing_tb_tmp AS (SELECT address FROM listings_dump WHERE mls_number = ${mls}),
	tax_tb AS (SELECT full_address,situs_county,legal_desc,assessed_value,yr_built,parcel_number FROM tax 
		INNER JOIN listing_tb_tmp ON tax.full_address = listing_tb_tmp.address),
	output AS (SELECT * FROM tax_tb FULL OUTER JOIN listing_tb on listing_tb.address = tax_tb.full_address)
	SELECT * FROM output`;


	const GET_PROPERTY_INFO2 = `WITH 
	tax_tb AS (SELECT full_address,situs_county,legal_desc,assessed_value,yr_built,parcel_number FROM tax WHERE property_id = '${tax_p_ID}'),
	listing_tb AS (SELECT 
	subdiv_name,
    property_subtype,
    sqft_total,
    lot_size_acres,
    beds_total,
    baths_half,
    baths_full,
    agent_mls_id,
    agent_full_name,
    agent_contract_date AS most_recent_date,
    status,
    tax_tb.situs_county,tax_tb.legal_desc,tax_tb.assessed_value,tax_tb.yr_built,tax_tb.parcel_number
	FROM listings_dump RIGHT JOIN tax_tb ON tax_tb.full_address = listings_dump.address)
	SELECT * FROM listing_tb`;

	
	if (mls != null && mls.length != 0) {
		pgClient.query(GET_PROPERTY_INFO1,(err, results) => {
		if (err) {
			return res.send(err)
		}
		else {
			if (results['rows'].length == 0){
				return res.send("no property description info for the property")
			}
			return res.json(results['rows'])
			
		}
	
		});
	}
	else {
	pgClient.query(GET_PROPERTY_INFO2,(err, results) => {
		if (err) {

			return res.send(err)
		}
		else {
			if (results['rows'].length == 0){
				return res.send("no property description info for the property")
			}
			return res.json(results['rows'])
			
		}
	});
	}

});


/**
* kitchen features info route
*/

app.get('/listings/kitchen-features', (req, res) => {
	const {city} = req.query;
	const GET_KITCHEN_RECORD = `SELECT exterior_features,COUNT(*) AS frequency FROM listings_dump 
	where city = '${city}' GROUP BY exterior_features`;
	

	pgClient.query(GET_KITCHEN_RECORD,(err, results) => {
	if (err) {
		return res.send(err)
	}
	else {
		if (results['rows'].length == 0){
				return res.send("no kitchen features description info for the city")
		}
		return res.json(results['rows'])
		
	}

	});
});


/**
* tax lookup info route
*/
app.get('/tax/lookup', (req, res) => {
	const {county,zip} = req.query;
	const county_ = county.split("_").join(" ")
	const GET_TAX_RECORD1 = `SELECT * FROM tax where situs_county = '${county_}'`;
	const GET_TAX_RECORD2 = `SELECT * FROM tax where situs_zip = '${zip}'`;
	
	if (county_ != null && county_.length != 0) {
		pgClient.query(GET_TAX_RECORD1,(err, results) => {
		if (err) {
			return res.send(err)
		}
		else {
			if (results['rows'].length == 0){
				return res.send("no tax info for the area")
			}
			return res.json(results['rows'])
			
		}
	
		});
	}
	else {
	pgClient.query(GET_TAX_RECORD2,(err, results) => {
		if (err) {

			return res.send(err)
		}
		else {
			if (results['rows'].length == 0){
				return res.send("no tax info for the area")
			}
			return res.json(results['rows'])
			
		}
	});
	}
	
});



app.listen(4000, () => {
	console.log("Amne API listening on port 400")
});