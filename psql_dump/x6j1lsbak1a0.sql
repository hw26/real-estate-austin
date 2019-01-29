--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.8
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: offer_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.offer_requests (
    index bigint,
    address text,
    date_request text,
    listing_mls_number double precision,
    ofr_id text,
    unit_number text,
    user_name text,
    user_email text,
    zipcode text
);


--
-- Data for Name: offer_requests; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.offer_requests (index, address, date_request, listing_mls_number, ofr_id, unit_number, user_name, user_email, zipcode) FROM stdin;
0	18004 Catumet Cv	2017-05-31T00:00:00	9730997	6ca67391-2ce1-4946-9cc1-28a900b24c66	\N	Jeffrey Clark	larrymoore@hotmail.com	78660
1	13428 Lipton Loop	2016-11-29T00:00:00	8455376	c95ac901-bf74-4d7f-b078-45c485af5f88	\N	Angie Glomb	jacobchan@rodriguez.com	78617
2	7403 Mifflin Kenedy Ter	2017-06-03T00:00:00	1200793	9246f93b-812c-4e3d-97f7-154feee4d52e	\N	Jonathan Feliciano	pthomas@hotmail.com	78749
3	13428 Lipton Loop	2017-05-25T00:00:00	8455376	0cbb3193-5387-4351-ad90-7d9f5f6e8bf6	\N	Anne Brunner	savannah00@yahoo.com	78617
4	12806 Hughes St	2017-06-24T00:00:00	3855355	b581c29e-1b09-4bb4-8f99-4c771fe8b7f7	\N	Dorothy Oestmann	uwade@hotmail.com	78732
5	1509 Shady Creek Trl	2017-05-20T00:00:00	4629307	af3eab8c-c4f4-4de0-8d52-6816b593ca68	\N	Theresa Tai	slopez@morgan.com	78613
6	22520 Rock Wren Rd	2016-10-21T00:00:00	8170312	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Louise Gardner	allenthomas@gamble.com	78669
7	4738 Country Club Dr	2017-01-20T00:00:00	1194449	cbcd079a-1707-4b9b-a73f-0f11b01eaf51	\N	Michael Clark	njones@welch.com	78645
8	303 Provines Dr	2017-09-25T00:00:00	8267643	46dbb57f-3bf7-4844-a6d9-f1c2999b59a7	\N	Douglas Dailey	joe79@hotmail.com	78753
9	12808 Hughes St	2017-01-30T00:00:00	9744423	2d3ead03-76e5-4c37-8083-703c905cd7e7	\N	James Sullivan	willie81@yahoo.com	78732
10	4241 Canyon Glen Cir	2017-03-16T00:00:00	5159943	cfa68e9c-2b61-42f2-add2-c735705a7879	\N	Keith Ellis	xgreen@king.com	78732
11	13509 Cantarra Dr	2016-10-31T00:00:00	7923106	abca2c35-3ff7-429c-8bc0-7b5c430cb437	\N	Tyler Anderson	tmiller@green-cannon.biz	78660
12	10704 Bayridge Cv	2017-01-02T00:00:00	6433989	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Ray Snavely	hallrandy@larsen-horne.com	78759
13	18521 Tanner Bayou Loop	2017-02-18T00:00:00	3431864	3388dd2f-da0b-487e-a8f7-b0389d741cee	\N	James Oliver	greenjeffery@taylor.com	78738
14	4241 Canyon Glen Cir	2017-03-05T00:00:00	5159943	ec09912e-2c9f-4884-878b-457f88bd5e11	\N	Betty Blakely	powellkirk@hotmail.com	78732
15	12924 Brigham Dr Se	2017-08-26T00:00:00	4914120	48532ede-fa40-4e20-9e53-6803a02adb37	\N	Micheal Adcock	qfisher@hayes-lane.com	78732
16	10813 Sierra Oaks	2016-12-02T00:00:00	6578318	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Alvin Oneal	joseph29@gmail.com	78759
17	136 Karen Hill Pl	2016-10-28T00:00:00	5380387	15733c35-dbe1-4975-a6d9-5828ce040c9e	\N	Graciela Rosa	imorse@hotmail.com	78652
18	7610 Northcrest Blvd	2017-10-10T00:00:00	2203989	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Tonya Figueredo	egarcia@webster.com	78752
19	308 Tellus St	2017-04-07T00:00:00	8384135	1bd1c306-8db2-4a44-92bb-015da8843c45	\N	Barbara Saraiva	cortezpeter@gmail.com	78734
20	713 Black Isle Dr	2017-06-05T00:00:00	8024615	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Alan Reilly	xmartinez@gmail.com	78660
21	4738 Country Club Dr	2017-09-03T00:00:00	1194449	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Deborah Elliott	gwong@mullins.biz	78645
22	4241 Canyon Glen Cir	2017-08-05T00:00:00	5159943	a8a32b8a-a1c6-40e3-996f-830174a2f8ea	\N	Wyatt Davis	jamesfreeman@gmail.com	78732
23	11316 Alhambra Dr	2017-08-18T00:00:00	3826379	804489a1-d8ce-4b5b-9f2a-5ddbcc645124	\N	Warren Seneca	cruzsheila@hotmail.com	78759
24	4241 Canyon Glen Cir	2017-06-27T00:00:00	5159943	c55cebd1-7628-4112-9fcd-452ea3304faf	\N	Kathryn Cooper	thomasdavid@gmail.com	78732
25	2209 Village View Loop	2016-10-24T00:00:00	4392103	c38f8fe0-4cf1-407c-96d1-398fd926a7f8	\N	Willis Mcdaniel	nunezpatricia@gmail.com	78660
26	7902 Bramble Bush Dr	2017-07-30T00:00:00	8259251	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Sandra Jarvis	robbinstyler@gmail.com	78747
27	1821 Chula Vista Dr	2017-03-02T00:00:00	4372192	e1d1bc82-e272-41b8-a2cb-17738be1bfff	\N	Leonard Sykes	matthewcasey@yahoo.com	78613
28	303 Provines Dr	2017-09-19T00:00:00	8267643	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Tiffany Williams	qfox@yahoo.com	78753
29	1800 Rhodes Rd	2017-08-05T00:00:00	3889813	48385d95-a688-4d1e-bf7a-4edee92f95c5	\N	Calvin Mathis	tiffany47@taylor-rogers.info	78721
30	11209 Midbury Ct	2016-12-22T00:00:00	3204186	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Pamela Artis	jhughes@martin.com	78748
31	101 E Starling Dr	2017-04-20T00:00:00	7072259	30cd4e6f-2f91-4b39-8f6a-b26af010d01d	\N	James Jones	harringtonphyllis@white.info	78753
32	1408 Haley Gray Dr	2017-06-08T00:00:00	8758387	62cae37e-f480-4cc4-9f32-20ed6151157c	\N	Rodolfo Chadwick	andersonlisa@yahoo.com	78660
33	5029 Lansing Dr	2017-02-24T00:00:00	2728792	57dee6ea-833e-486a-afd1-0cd6ef5de591	\N	Margarete Kuipers	sbrooks@yahoo.com	78745
34	1509 Shady Creek Trl	2017-09-17T00:00:00	4629307	9eee591a-5900-4911-a4b0-4b37441d5581	\N	Kevin Palacios	danahill@nelson.com	78613
35	19809 Ocotillo Dr	2017-09-13T00:00:00	3609686	d75dab2d-b055-40bf-8aaf-766bb18ea994	\N	Sheila Rodriguez	eugenevaldez@yahoo.com	78660
36	6706 Breezy Pass	2017-04-15T00:00:00	5869506	d75dab2d-b055-40bf-8aaf-766bb18ea994	\N	Ethel Dougherty	floresjared@gmail.com	78749
37	11501 Hunting Creek Ln	2017-08-24T00:00:00	6809281	14a2833c-4cee-4972-a9d5-d7f27d895aa9	\N	Mary Ruth	ryanhuynh@yahoo.com	78748
38	416 Kissing Oak Dr	2017-04-07T00:00:00	3283555	63bd67c3-1d40-4e49-9aa5-7b7593a383e9	\N	Stanley Sanchez	pricewilliam@yahoo.com	78748
39	13308 Vizquel Loop	2017-04-11T00:00:00	7772381	a18fd79d-f60e-4428-808f-a78b82b9058a	\N	Melissa Odom	wgriffin@coleman.info	78617
40	10813 Sierra Oaks	2016-11-01T00:00:00	6578318	202d6201-9ffa-48a9-abb8-4df12de7c14c	\N	Rosetta Ulrich	ibarranicole@gmail.com	78759
41	805 Ivy Dr	2017-09-30T00:00:00	9182527	45480140-ecfa-49c0-8902-e0afe1abcf19	\N	Joan Mcallister	grichard@henderson-nunez.com	78660
42	4100 Veiled Falls Dr	2017-01-10T00:00:00	2911987	f7d24ec9-9bf4-4b6d-8012-a42780d7c784	\N	John Hanavan	rbailey@miller-dickson.net	78660
43	6811 Langston Dr	2017-09-30T00:00:00	9299451	e02eec14-95be-413c-968e-0f4fb82376fe	\N	William Hayes	adrian69@gmail.com	78723
44	6706 Boleynwood Dr	2017-07-08T00:00:00	8352891	b115f4fc-73c5-494f-9543-d4103fa482d4	\N	Robin Fredrickson	njohnson@hotmail.com	78745
45	1036 Pendragon Castle Dr	2017-04-13T00:00:00	2897968	0b6035d4-d65c-4738-a357-e08d02d7b945	\N	Leslie Mcbee	andersonjennifer@le-salinas.com	78660
46	18605 Jana Patrice Dr	2017-03-17T00:00:00	2089611	fd724cbf-767b-4c25-a372-f17a2dd21102	\N	Carl Rollinger	pageralph@campbell.info	78660
47	1217 E Brophy Dr E	2017-07-18T00:00:00	1586842	5f8f5f43-fecf-4254-9412-764f310c7a18	\N	Joseph Goering	joycecurtis@johnson-flowers.biz	78660
48	11209 Midbury Ct	2017-05-16T00:00:00	3204186	12b566c6-5ed8-4da1-9b8b-34f9d2a6a3aa	\N	Paul Angulo	bakeramanda@williams.net	78748
49	209 Errol Dr	2017-01-15T00:00:00	8005398	45a3280c-0b66-4b95-853e-67422eba4501	\N	Lisa Brown	ffloyd@hotmail.com	78669
50	101 E Starling Dr	2016-12-02T00:00:00	7072259	81a289c5-8660-4707-a553-160e36384c5e	\N	Jonathan Jacobs	albertdixon@hotmail.com	78753
51	12806 Hughes St	2016-12-10T00:00:00	3855355	0a0aa0e2-5d09-4489-a5cd-c64271807e07	\N	Kelly Johnson	andrea38@yahoo.com	78732
52	312 Celery Loop	2017-09-28T00:00:00	7791493	f2f18374-a870-4372-992c-57ed1d1c9d4d	\N	Gertrude Cucco	xriley@yahoo.com	78748
53	6238 Boxcar Run	2017-07-19T00:00:00	1021591	bb6715c3-473c-44f7-b22d-f8b93e7bcde4	\N	William Horton	maliksmith@keith.net	78745
54	4738 Country Club Dr	2017-08-18T00:00:00	1194449	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Dorothy Geraci	biancavang@brooks.com	78645
55	8200 Red Willow Dr	2017-09-16T00:00:00	7295806	f2f18374-a870-4372-992c-57ed1d1c9d4d	\N	William Johnson	rodrigueztiffany@hotmail.com	78736
56	2400 Danciger Ln	2017-01-15T00:00:00	9626819	1c921591-1c69-441b-8cbd-39b74c5529de	\N	Mildred Russo	kristina21@yahoo.com	78613
57	13428 Lipton Loop	2016-11-04T00:00:00	8455376	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Stephen Martin	wendy90@norris.com	78617
58	1205 Darjeeling Dr	2017-04-12T00:00:00	3253891	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Dana Ortiz	lori48@bishop.net	78660
59	7005 Mackinaw Xing	2017-07-08T00:00:00	9068899	db533509-5deb-4441-b3e0-aa7f5399f0a0	\N	Bret Hicks	russellnicole@gmail.com	78645
60	7403 Mifflin Kenedy Ter	2017-10-08T00:00:00	1200793	40d5f1f1-ac9e-4980-8241-6125f2524da4	\N	Tommy Ashton	karen62@hotmail.com	78749
61	12924 Brigham Dr Se	2017-03-27T00:00:00	4914120	921e6968-2484-43a1-a62f-e1ad07cf1b15	\N	Anita Austerberry	fcamacho@baker.info	78732
62	18408 Deep Well Dr	2017-10-09T00:00:00	7644388	ca9f0e60-0769-4883-945b-b3e0894e1b0c	\N	Shannon Gaddis	anthonymorris@jordan.com	78738
63	1310 Neans Dr	2016-11-27T00:00:00	5445761	072ca822-ed52-460e-aa3c-61b51503684e	\N	Karen Richardson	lhicks@crane-wilkins.org	78758
64	713 Black Isle Dr	2017-01-30T00:00:00	8024615	1bd1c306-8db2-4a44-92bb-015da8843c45	\N	Billy Laramie	brosales@hotmail.com	78660
65	1509 Shady Creek Trl	2017-09-22T00:00:00	4629307	28643c0e-4e68-440f-8801-0f3d8ecc8677	\N	Angel Wing	latasha23@martin.info	78613
66	615 Bissonet Ln	2017-09-09T00:00:00	6506741	4b3c1b28-1e7f-4a96-ab3d-55d1e5eeefa3	\N	Cathy Wood	luke06@hotmail.com	78752
67	17008 Brewer Blackbird Dr	2017-10-09T00:00:00	3964011	aaf624a6-e8f4-4bfb-b1fa-4b2a419f40ab	\N	Antonia Evans	kdavis@lopez.org	78660
68	11809 Bastrop St	2017-04-19T00:00:00	4975795	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Susan Gallahan	stevenwillis@jones.info	78653
69	17803 Linkhill Dr	2016-12-17T00:00:00	6476391	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Rachel Caron	millerbonnie@hotmail.com	78620
70	303 Provines Dr	2017-03-16T00:00:00	8267643	a4b86650-9c7e-4b17-a477-c1d52a2bfe00	\N	Dianne Powles	martinstacy@yahoo.com	78753
71	11316 Alhambra Dr	2016-11-29T00:00:00	3826379	86e8046b-782e-45c7-8d28-3a055feaa0c0	\N	Tyrone Eaton	beverly97@gmail.com	78759
72	3101 Barnsley Dr	2017-03-26T00:00:00	7423538	1b9924ed-271b-43d0-9b83-ff40f8984392	\N	Ryan Musick	brittany30@gmail.com	78745
73	21215 Derby Day Ave	2017-05-28T00:00:00	1548320	304788bd-0413-458f-8e20-ae5f5043651b	\N	Ruth Rucker	fwilliams@gmail.com	78660
74	1800 Rhodes Rd	2016-10-25T00:00:00	3889813	1846f5aa-2b4b-43fa-b5a4-f912612b39d3	\N	Charlotte Becknell	beth02@gmail.com	78721
75	905 Texas Trl	2017-04-08T00:00:00	5679452	044f64fc-7ded-46cb-a82f-a42e9888389d	\N	Richard Reed	xdurham@little.com	78737
76	11209 Midbury Ct	2017-03-27T00:00:00	3204186	9f2f1cb4-20ec-4b2a-83df-6d9b716ff069	\N	Ricky Perego	hcummings@gmail.com	78748
77	5704 Boulder Creek	2016-10-21T00:00:00	2465375	03d738ec-0359-4f4d-a9ed-4095eb2a97c4	\N	Linda Brandt	owensjennifer@alexander.com	78724
78	805 Ivy Dr	2017-07-02T00:00:00	9182527	6ba870c2-f954-4718-b000-eb37f5ef2e0f	\N	Patricia Montero	uwoodard@mckenzie.org	78660
79	615 Bissonet Ln	2017-02-26T00:00:00	6506741	aaf624a6-e8f4-4bfb-b1fa-4b2a419f40ab	\N	Gene Schwartz	tammie01@hotmail.com	78752
80	12212 Scribe Dr	2017-04-30T00:00:00	4885276	14a2833c-4cee-4972-a9d5-d7f27d895aa9	\N	James Sutton	xmcneil@yahoo.com	78759
81	13428 Lipton Loop	2017-07-23T00:00:00	8455376	5054b111-625f-4efe-a274-1fadae197e7f	\N	Carol Stockburger	heather38@gmail.com	78617
82	719 Golf Crest Ln	2016-12-21T00:00:00	6959672	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Blanche Carrero	vflores@yahoo.com	78734
83	905 Texas Trl	2017-08-08T00:00:00	5679452	3775cede-d035-4f4a-a90a-5f435478f6c6	\N	Dan Cantin	matthew60@young-little.com	78737
84	4738 Country Club Dr	2017-03-22T00:00:00	1194449	492bb36d-1c00-4a70-a768-b9294c7b7d4a	\N	Gladys Boyd	tmiller@johnson.com	78645
85	713 Black Isle Dr	2017-02-19T00:00:00	8024615	5c63f908-a845-4e50-9771-79bac8c91850	\N	John Gadsen	zturner@hotmail.com	78660
86	1217 E Brophy Dr E	2017-05-14T00:00:00	1586842	79f2168e-8056-4013-a1ea-be5fda2eb0ce	\N	Ty Sanders	rochajon@mathews-holloway.com	78660
87	1501 Bamfield Cv	2016-11-02T00:00:00	8454141	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Andrea Huggins	lisa59@hotmail.com	78665
88	1217 E Brophy Dr E	2017-01-14T00:00:00	1586842	cfa68e9c-2b61-42f2-add2-c735705a7879	\N	Travis Zager	hollyspencer@hotmail.com	78660
89	101 E Starling Dr	2017-06-26T00:00:00	7072259	b6966a77-32bb-4aab-90f3-e1d6eb6afede	\N	Edwin Finley	wchandler@scott.com	78753
90	5805 Blanco River Pass	2017-10-06T00:00:00	9192415	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Laura Liff	alechubbard@hotmail.com	78749
91	3929 Gyrfalcon Cv	2017-03-11T00:00:00	3919917	dee56603-5f57-4f21-be23-9571d8220627	\N	Andrew Day	andrewarellano@bond-lopez.com	78738
92	22520 Rock Wren Rd	2017-04-19T00:00:00	8170312	d222af4c-a540-4215-b94d-e57dbbcb9a91	\N	Stephanie Holder	williamsonjustin@diaz.info	78669
93	1901 Horse Wagon Dr	2017-04-02T00:00:00	4598913	c330e8a6-0919-45e5-b73c-aa44e29bebac	\N	Pamela Quarnstrom	kevin33@barton.info	78754
94	3010 Spotted Wolf Trl	2017-02-18T00:00:00	8193203	2618f546-330a-42a3-b0e8-941d76c42182	\N	Andrea Craft	devinbrown@long.com	78734
95	4500 Woodstock Dr	2016-11-07T00:00:00	4253473	150e60be-48b0-473c-b4d1-ef06d0e37fba	\N	Clinton Anderson	afrancis@lee.biz	78633
96	2804 Cornish Cir	2016-11-21T00:00:00	8756568	a8867a08-9476-4f6f-9676-579c8a00fe24	\N	Richard Ross	millercameron@gmail.com	78745
97	11209 Midbury Ct	2017-06-22T00:00:00	3204186	90935887-6e1e-4596-9c4b-f5b957a680ac	\N	Christine Marine	browncynthia@moss.com	78748
98	208 Mauldin St	2016-12-05T00:00:00	1172460	3da753f9-2603-4947-b8c0-fbffdfd07631	\N	Dawn Gill	frankbush@smith.com	78628
99	7702 Finch Trl	2017-05-01T00:00:00	2864868	54839ec2-d8f7-4f10-9791-84e3c3bf55ab	\N	Corina Adame	iward@yahoo.com	78745
100	20204 Wearyall Hill Ln	2017-02-01T00:00:00	8533141	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Jeffrey Pettigrew	kevin27@shepherd.com	78660
101	11324 Avering Ln	2017-04-09T00:00:00	8224323	48532ede-fa40-4e20-9e53-6803a02adb37	\N	Winnie Arnold	dawn72@hotmail.com	78754
102	2804 Cornish Cir	2016-12-08T00:00:00	8756568	adde3c94-6e38-43a9-a19e-491b8d85ce44	\N	Miranda Chandler	elizabeth76@flores.com	78745
103	4738 Country Club Dr	2017-04-27T00:00:00	1194449	8650434d-e8ce-4085-8c4f-d34e1d2b3b43	\N	Robin Merritt	franciscoallen@yahoo.com	78645
104	7610 Northcrest Blvd	2017-08-14T00:00:00	2203989	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Stanley Rountree	kruegermarissa@cooke.org	78752
105	136 Karen Hill Pl	2017-02-15T00:00:00	5380387	97412f07-72bc-4ccc-ab65-1d172293af55	\N	James Hairston	james66@yahoo.com	78652
106	17816 Linkview Dr	2017-05-11T00:00:00	9637446	c95ac901-bf74-4d7f-b078-45c485af5f88	\N	Linda Hansen	jennifer13@gmail.com	78620
107	11504 North Oaks Dr	2017-02-06T00:00:00	2140439	4ef0ec85-6048-4227-84bb-01787289c525	\N	Krista Pollard	briancompton@hotmail.com	78753
108	8504 Contour Dr	2017-04-11T00:00:00	1854000	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Jody Mcdermott	matthewmiller@moore-haynes.com	78757
109	15205 Ora Ln	2016-10-26T00:00:00	7411802	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Lucille Sullivan	cynthiabaker@young.biz	78660
110	3108 Heron Call Trl	2017-04-05T00:00:00	4373054	d75dab2d-b055-40bf-8aaf-766bb18ea994	\N	Vincent Tompkins	otucker@sosa.info	78660
111	8306 Rockwood Ln	2017-04-29T00:00:00	2444054	a8867a08-9476-4f6f-9676-579c8a00fe24	\N	James Scott	ofigueroa@gmail.com	78757
112	4738 Country Club Dr	2017-02-04T00:00:00	1194449	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Earl Musgrove	gjohnson@mendoza.biz	78645
113	905 Texas Trl	2017-08-11T00:00:00	5679452	46043a78-8c75-4447-a5fe-7b8ce4e690c6	\N	Roberta Mclean	russellharding@robinson-howard.com	78737
114	203 Tillery Sq	2017-07-26T00:00:00	6680709	bfc97858-fd09-4d84-800b-fab5cb6b9c33	\N	David Lamb	jonathantorres@king.com	78702
115	7403 Mifflin Kenedy Ter	2017-04-03T00:00:00	1200793	ce53144d-169b-4cd0-aad0-a5367c9570cd	\N	Shari Sawer	ijohnson@gmail.com	78749
116	905 Texas Trl	2017-08-11T00:00:00	5679452	dc740cec-50ec-420f-be10-d2d0d289e0a9	\N	Barbara Hart	paula15@lopez.info	78737
117	1406 Apache Cv	2016-10-17T00:00:00	2697879	d05024e6-d302-483c-a122-801bdd16ce23	\N	Harold Wood	kimberlyfreeman@gmail.com	78660
118	905 Texas Trl	2017-05-27T00:00:00	5679452	2156eccb-a253-4e5c-8415-c9860d0517fa	\N	Larry Schaus	amberpatel@johnson.com	78737
119	7403 Mifflin Kenedy Ter	2016-11-29T00:00:00	1200793	150e60be-48b0-473c-b4d1-ef06d0e37fba	\N	Blanche Day	lambertmary@hotmail.com	78749
120	2400 Wilma Rudolph Rd	2017-01-29T00:00:00	5295481	6fa63dc9-749d-4bc3-92d8-c1b5a355c103	\N	Tim Collica	jgonzalez@welch-graves.net	78748
121	13428 Lipton Loop	2017-07-24T00:00:00	8455376	eb73830f-5ca0-4ec6-aa56-6bad76f0a811	\N	John Smith	hawkinsashlee@gmail.com	78617
122	208 Mauldin St	2017-09-21T00:00:00	1172460	3a0b6a13-cdc4-40e8-b3db-4a5e99115391	\N	Ernesto Knight	christopher39@salazar.org	78628
123	11316 Alhambra Dr	2016-12-31T00:00:00	3826379	4a5f25dd-686d-4950-b30c-5b24eba2a88c	\N	Serena Scott	santoskathryn@gmail.com	78759
124	17008 Brewer Blackbird Dr	2017-06-30T00:00:00	3964011	044f64fc-7ded-46cb-a82f-a42e9888389d	\N	Thomas Nance	acardenas@yahoo.com	78660
125	152 Florenz Ln	2017-01-23T00:00:00	4974433	bfc97858-fd09-4d84-800b-fab5cb6b9c33	\N	Brian Reeves	gary58@yahoo.com	78628
126	4738 Country Club Dr	2017-01-08T00:00:00	1194449	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Rita Heavner	ashley10@hotmail.com	78645
127	2001 American Dr	2017-03-05T00:00:00	2646257	53c16e79-3e06-428e-bcd8-6b155e8e4d9d	\N	Alice Hammond	robinsoncasey@gmail.com	78645
128	12808 Hughes St	2017-07-17T00:00:00	9744423	c32bee1c-3262-4353-a807-8fb3746b1471	\N	Melva Marshall	barajascindy@fletcher.org	78732
129	12708 Burks Cv	2017-01-06T00:00:00	1568857	cfa68e9c-2b61-42f2-add2-c735705a7879	\N	Michelle Stracke	ericgonzales@yahoo.com	78732
130	15205 Ora Ln	2017-01-14T00:00:00	7411802	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Bonnie Gaston	amy21@young.info	78660
131	5600 Teri Rd	2016-11-16T00:00:00	1571836	80c44daa-d745-4eb2-b401-3defcb83f637	\N	Carl Bennett	irichardson@hotmail.com	78744
132	2504 Greer Dr	2016-12-05T00:00:00	9730781	a81e4d37-ab01-4bae-b7e4-37cab2fcf305	\N	Jonathan Suiter	joseph48@yahoo.com	78613
133	5000 Delores Ave	2017-03-11T00:00:00	9325501	304788bd-0413-458f-8e20-ae5f5043651b	\N	Scott Miller	fguerra@lee.com	78721
134	18004 Catumet Cv	2017-03-03T00:00:00	9730997	a454b0fa-43fd-464c-9e7c-649fba2a7bac	\N	Diana Jeffery	john19@bennett-lopez.org	78660
135	4738 Country Club Dr	2016-12-05T00:00:00	1194449	1444576b-2cb0-4a9f-aaa3-7adfc0f68a67	\N	Irene Mcgowan	nathaniel17@hayes-carr.com	78645
136	8306 Rockwood Ln	2016-12-12T00:00:00	2444054	6ba870c2-f954-4718-b000-eb37f5ef2e0f	\N	James Marin	ashleymyers@yahoo.com	78757
137	905 Texas Trl	2017-03-25T00:00:00	5679452	e9ff8dca-5176-4b02-9691-b37fc38d5996	\N	Ervin Goetz	kwelch@yahoo.com	78737
138	17008 Brewer Blackbird Dr	2017-05-17T00:00:00	3964011	b60395c9-ccef-42bb-ab88-5147295b8333	\N	Robert Fowler	johnsonjoseph@yahoo.com	78660
139	22406 Briarview Dr	2017-06-02T00:00:00	7252040	804489a1-d8ce-4b5b-9f2a-5ddbcc645124	\N	Brad Fowlie	sandra98@yahoo.com	78669
140	208 Mauldin St	2017-04-08T00:00:00	1172460	08e88d5c-2c42-4335-89cd-0916609072e3	\N	Gina Little	contrerasmichael@figueroa.com	78628
141	11812 Arbor Downs Rd	2017-09-24T00:00:00	4017485	09f64e2b-aa53-47ea-bd05-421ba01890fa	\N	Anthony Sangi	kimberly78@little-harrell.com	78748
142	13432 Holly Crest Ter	2017-02-13T00:00:00	9996615	dade1254-466b-4ae3-816f-83606ae4a9fc	\N	Barbara Hazan	smithsierra@fox-york.net	78653
143	8840 Francia Trl	2017-09-02T00:00:00	2049696	8d515ae8-c088-444e-a8d4-85ce033b47ab	\N	Joy Newcomb	nicolemunoz@yahoo.com	78748
144	18209 Kermit Ct	2017-02-10T00:00:00	4616877	14a2833c-4cee-4972-a9d5-d7f27d895aa9	\N	Richard Hopf	igross@gmail.com	78660
145	208 Mauldin St	2017-06-05T00:00:00	1172460	909016ae-29b8-4057-869b-8882a1c6b58a	\N	Vanessa Rodgers	crowe@hotmail.com	78628
146	5000 Delores Ave	2017-05-24T00:00:00	9325501	d58b9ea3-4057-446f-a656-ec48ce4bb3ac	\N	Elizabeth Allison	sierra25@hotmail.com	78721
147	5814 Sandalwood Holw	2017-03-12T00:00:00	1276819	6ba870c2-f954-4718-b000-eb37f5ef2e0f	\N	Ernesto Thammavongsa	christineandersen@anderson-browning.com	78731
148	17008 Brewer Blackbird Dr	2017-01-09T00:00:00	3964011	35392186-9f95-46fa-89a3-b2d8f8109bc9	\N	Sally Dennard	awillis@smith-sims.com	78660
149	4241 Canyon Glen Cir	2017-08-17T00:00:00	5159943	b5fa2501-5eea-45d1-b03c-6adee6dbc6fe	\N	Ashley Mccloud	jonathan18@gmail.com	78732
150	8508 Alophia Dr	2017-03-14T00:00:00	8391878	2aa28e76-5be7-4861-9858-8ad6f245aa8a	\N	Ian Wellman	erin72@yahoo.com	78739
151	5607 Berkman Dr	2016-11-15T00:00:00	7989215	6ba870c2-f954-4718-b000-eb37f5ef2e0f	\N	Jerlene Holmes	michaellane@wagner-white.com	78723
152	5704 Boulder Creek	2016-11-17T00:00:00	2465375	976a5216-90ec-49dd-bfd8-6d9c3746e4fb	\N	Zita Adams	erichuerta@yahoo.com	78724
153	7403 Mifflin Kenedy Ter	2016-10-22T00:00:00	1200793	072ca822-ed52-460e-aa3c-61b51503684e	\N	Alice Weston	george91@ward.com	78749
154	8840 Francia Trl	2017-04-14T00:00:00	2049696	bfc97858-fd09-4d84-800b-fab5cb6b9c33	\N	Joyce Obrien	phillipsashley@gmail.com	78748
155	1406 Apache Cv	2017-08-08T00:00:00	7382620	73a84c4d-8e60-4336-bd6a-abc5ee0bf125	\N	Loriann Cordova	rhampton@wheeler-cummings.com	78660
156	10308 Peekston Dr	2017-10-11T00:00:00	8407368	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Wanda Trejo	joseph48@barry.com	78726
157	905 Texas Trl	2017-02-18T00:00:00	5679452	14a2833c-4cee-4972-a9d5-d7f27d895aa9	\N	Jerry Taylor	cooperjean@gmail.com	78737
158	6238 Boxcar Run	2017-04-10T00:00:00	1021591	4fc61783-a046-4927-a2d2-12b408c6bd2c	\N	Sandra Porter	wblake@gmail.com	78745
159	20602 Hoover Cv	2017-10-08T00:00:00	6667513	1b9924ed-271b-43d0-9b83-ff40f8984392	\N	Adolph Parham	charles63@hotmail.com	78645
160	2405 Equestrian Trl	2017-09-30T00:00:00	2405679	5904e080-c5a3-4fa3-ad5a-81774094a0ee	\N	Jesus Marcus	christopherwhite@moore.com	78727
161	3205 Rockhurst Ln	2017-03-27T00:00:00	9671357	252cad0e-b5ca-48b8-96f1-4974b510802a	\N	Mildred Hobbins	xmosley@howard.net	78723
162	1036 Pendragon Castle Dr	2017-01-21T00:00:00	2897968	a277b053-ab6e-468b-89bb-75d8c9c72629	\N	Debbie Winterholler	william10@gmail.com	78660
163	14904 Chamomile Cv	2016-12-26T00:00:00	1585388	3a034d49-503e-48cd-9cbd-1cd09d8ca5f5	\N	Cindi Foster	milleralex@moss-wilson.com	78660
164	208 Mauldin St	2017-03-06T00:00:00	1172460	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Michael Hardin	hcastro@yahoo.com	78628
165	4738 Country Club Dr	2017-02-10T00:00:00	1194449	933ac532-d52e-49e7-a093-7bdf3ea43a70	\N	Bonnie Womack	kbell@gmail.com	78645
166	312 Celery Loop	2017-09-20T00:00:00	7791493	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Lorena Corriveau	moyerbriana@alexander-campbell.com	78748
167	704 Stevenage Dr	2017-03-14T00:00:00	1283911	ec065d7c-81a3-44a8-bf41-4bb3263129c0	\N	Deborah Nichols	turnernicholas@hotmail.com	78660
168	3205 Rockhurst Ln	2016-12-07T00:00:00	9671357	0a0aa0e2-5d09-4489-a5cd-c64271807e07	\N	Letha Moon	ellischristopher@gonzalez-morrison.com	78723
169	20905 Huckabee Bnd	2017-10-12T00:00:00	1956492	8377af05-1238-4437-99b2-e79801cdcdb1	\N	Debra Loving	danielroach@morris-holmes.com	78660
170	805 Ivy Dr	2017-05-04T00:00:00	9182527	d05024e6-d302-483c-a122-801bdd16ce23	\N	Katina Johnson	flawson@yahoo.com	78660
171	5421 Texas Bluebell Dr	2016-11-14T00:00:00	8176991	56b6c985-2385-4819-a2e5-6819deb8c1b2	\N	Deborah Weidenbach	shannonrussell@hotmail.com	78669
172	17009 John Michael Dr	2017-03-18T00:00:00	7101330	22969620-a17d-4cec-acf4-68f848353517	\N	Stephen Jensen	christopher23@brooks.com	78653
173	2411 Marcus Abrams Blvd	2017-09-16T00:00:00	2629543	8b0c1dbb-cf11-456a-8347-f3f2d1598711	\N	Jamie Carter	nguyenkaren@moreno.com	78748
174	8840 Francia Trl	2017-04-25T00:00:00	2049696	15733c35-dbe1-4975-a6d9-5828ce040c9e	\N	Courtney Stephens	wlindsey@yahoo.com	78748
175	2101 Old Mill Rd	2017-06-25T00:00:00	3520525	4c40bc2d-3a57-4d94-af72-dcdf983f16d6	\N	Cathryn Deines	ohoffman@yahoo.com	78613
176	6520 Adair Dr	2016-10-18T00:00:00	1489064	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Maria Johnston	david14@cooper.net	78754
177	8101 Cannon Ct	2017-04-03T00:00:00	8357267	f69896a8-cce2-4843-b355-86d6c8712fa5	\N	Earnest Glass	cartervictoria@hotmail.com	78645
178	13428 Lipton Loop	2016-12-25T00:00:00	8455376	f272795c-f6fe-4c54-b6df-724dc9be71cf	\N	Edward Bautista	klinejohn@guerrero.com	78617
179	18004 Catumet Cv	2016-10-24T00:00:00	9730997	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Grace Carlo	pjefferson@white-mora.org	78660
180	8406 Cayuga Dr	2017-03-23T00:00:00	4751918	e67e94ea-0250-4411-839f-1860e3b0d109	\N	Taylor Brobeck	matthew71@gmail.com	78749
181	1406 Apache Cv	2017-01-28T00:00:00	7382620	5a2a8b1a-1498-47c3-8948-da7923ec67b6	\N	Ruth Prichard	andrew12@gmail.com	78660
182	2804 Cornish Cir	2017-08-25T00:00:00	8756568	ec065d7c-81a3-44a8-bf41-4bb3263129c0	\N	Michael Mckown	keith27@gmail.com	78745
183	2001 American Dr	2017-01-16T00:00:00	2646257	1a7d8b88-f59c-4574-b7c5-894eea9453b6	\N	Kenneth Quintanar	trandonald@green.com	78645
184	1236 Dexford Dr	2017-05-16T00:00:00	6906683	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Leslie Callahan	wcurtis@walton.info	78753
185	4738 Country Club Dr	2017-04-03T00:00:00	1194449	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Sergio Sharpe	sarah57@myers.com	78645
186	6238 Boxcar Run	2017-07-19T00:00:00	1021591	5ef66062-60ee-4720-9d25-c310c815ac9c	\N	Edward Gray	jamesbaxter@yahoo.com	78745
187	6238 Boxcar Run	2016-12-29T00:00:00	1021591	c5f82b22-9383-4f55-b16e-a728902f385a	\N	James Rodriguez	brian68@gmail.com	78745
188	2201 Cadiz Cir	2017-03-29T00:00:00	6550332	01a59d3f-adbf-4f25-a768-4ab28e238de3	\N	Freddie Leath	cardenasgregory@hotmail.com	78741
189	1040 Pendragon Castle Dr	2017-03-12T00:00:00	2048988	8b52c032-340b-4aa7-9bff-900fcf4c21e3	\N	Jesse Parkins	elizabethkramer@gmail.com	78660
190	17009 John Michael Dr	2017-02-22T00:00:00	7101330	3ec7fa5e-325c-4752-8851-9ac12b75ef5f	\N	Lazaro Wilcutt	ufrancis@yahoo.com	78653
191	7403 Mifflin Kenedy Ter	2017-07-27T00:00:00	1200793	9db23e93-e083-424c-9265-3a04db6b5cce	\N	Kraig Fletcher	mary92@mason.com	78749
192	11209 Midbury Ct	2017-03-17T00:00:00	3204186	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Pamela Jennings	williamrhodes@yahoo.com	78748
193	14313 Cummins Way	2016-12-26T00:00:00	9545194	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Joseph Vizza	hjones@yahoo.com	78653
194	4738 Country Club Dr	2017-04-27T00:00:00	1194449	48385d95-a688-4d1e-bf7a-4edee92f95c5	\N	Erika Lowery	dwright@gmail.com	78645
195	19621 San Chisolm Dr	2017-01-12T00:00:00	2833023	d25c3ca2-722d-4e47-a8b9-72e1dbec09c8	\N	Brenda Porter	fmoon@green-williams.com	78664
196	903 Thackeray Ln	2017-02-13T00:00:00	7515122	632752a0-5529-4084-9cea-0d3a3d4f36e5	\N	Melissa Watkins	sthornton@yahoo.com	78660
197	14720 Lake Victor Dr	2017-06-01T00:00:00	5889370	0f4a0438-13c3-4869-b924-007af5b524a6	\N	Lois Ohalloran	ylopez@anderson.com	78660
198	12708 Burks Cv	2017-07-06T00:00:00	1568857	7f077d2e-5750-4bdc-82f8-8ce7a9246c46	\N	Winnifred Salem	kanderson@gmail.com	78732
199	9108 Colberg Dr	2016-11-24T00:00:00	1095406	4760f4a1-f829-424e-9f1e-aee5c1a81b43	\N	Louise Clarke	kprince@gmail.com	78749
200	802 Honeysuckle Ln	2017-01-06T00:00:00	9906548	a9d3829b-2550-4a91-90a3-01d4511c7ba0	\N	Juanita Hague	nataliecohen@parsons-carlson.net	78660
201	1501 Bamfield Cv	2016-11-09T00:00:00	8454141	9ea94dba-d0a9-4531-bc2f-9177ac39c2a8	\N	Stacey Ortiz	bryanjuarez@king.com	78665
202	1040 Pendragon Castle Dr	2017-08-28T00:00:00	2048988	a697a954-f513-45d9-a1b7-650659a1bcb5	\N	James Paige	brucebrandt@anderson.com	78660
203	8101 Cannon Ct	2016-12-15T00:00:00	8357267	cfa68e9c-2b61-42f2-add2-c735705a7879	\N	James Boyd	harrisonelizabeth@yahoo.com	78645
204	416 Kissing Oak Dr	2017-07-24T00:00:00	3283555	9246f93b-812c-4e3d-97f7-154feee4d52e	\N	Betty Robinson	shanelopez@allen.org	78748
205	1040 Pendragon Castle Dr	2017-02-02T00:00:00	2048988	5fc4b8aa-fa5c-45a9-a410-e1607be89ae1	\N	Richard Davis	penasean@yahoo.com	78660
206	17816 Linkview Dr	2017-02-17T00:00:00	9637446	909016ae-29b8-4057-869b-8882a1c6b58a	\N	Kenneth Corley	margaretfischer@hernandez-stewart.org	78620
207	1506 Mayapple St	2017-08-31T00:00:00	9181787	71a16566-99ad-4ec0-abf1-f92de60c00e8	\N	Darlene Mcfarland	joanna08@dixon-vaughn.biz	78660
208	3205 Rockhurst Ln	2016-12-06T00:00:00	9671357	e6a7aae9-07fc-4f39-b0db-89f0d706a25e	\N	Jason Hernandez	sarah24@thompson.com	78723
209	17408 Valentine Dr	2017-01-01T00:00:00	5604062	e2481777-5f8f-4444-a565-9ffa88602711	\N	Kevin Thornhill	cheyenne62@maxwell.com	78664
210	7902 Bramble Bush Dr	2017-08-04T00:00:00	8259251	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Juanita Bryant	charles06@barnes.com	78747
211	4738 Country Club Dr	2017-04-09T00:00:00	1194449	41b6fc0b-8f0f-4d88-b176-990222125b91	\N	Danny Diaz	matthewstimothy@hotmail.com	78645
212	208 Mauldin St	2017-06-16T00:00:00	1172460	be5cff5e-fc64-4efd-b198-4cf78ff359cb	\N	Allen Kirby	alejandrostephenson@gmail.com	78628
213	19809 Vilamoura St	2016-12-05T00:00:00	2960069	779be004-429a-4b2b-bc8d-d2ae497c8f6c	\N	Eddie Harding	hberry@brady.com	78660
214	3001 Jubilee Trl	2016-10-27T00:00:00	9824453	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Constance Pulliam	kimfrancisco@yahoo.com	78748
215	8608 Delaware Ct	2017-07-17T00:00:00	3661764	03d738ec-0359-4f4d-a9ed-4095eb2a97c4	\N	Florence Griffin	michellejohnson@bailey.com	78758
216	15210 Verela Dr	2017-01-09T00:00:00	1062532	14a2833c-4cee-4972-a9d5-d7f27d895aa9	\N	James Avilla	rhamilton@bell.com	78725
217	2400 Danciger Ln	2017-09-01T00:00:00	4658076	ca9f0e60-0769-4883-945b-b3e0894e1b0c	\N	Eric Rogers	curtismary@parker.net	78613
218	7403 Mifflin Kenedy Ter	2017-10-10T00:00:00	1200793	58bc14c6-1b79-4c6d-be4c-f5b32389e47d	\N	Mae Thomas	jessicastevens@murray-washington.com	78749
219	22520 Rock Wren Rd	2017-04-18T00:00:00	8170312	8b0c1dbb-cf11-456a-8347-f3f2d1598711	\N	Maureen Schleppenbach	dana89@hotmail.com	78669
220	303 Provines Dr	2016-10-23T00:00:00	8267643	b4d9d257-98ba-46e4-8b26-3604b9248a23	\N	Theodore Pedraza	hpittman@hotmail.com	78753
221	8416 Nairn Dr	2017-08-13T00:00:00	3921761	41b6fc0b-8f0f-4d88-b176-990222125b91	\N	Jerry Tapia	brockdaniel@yahoo.com	78749
222	6711 Porter St	2017-05-24T00:00:00	1301058	a0f11982-b6d8-413b-8a16-06f94e989f3c	\N	Joan Newyear	emily13@nunez.com	78741
223	4738 Country Club Dr	2017-06-06T00:00:00	1194449	f2c7fc5d-910c-4955-9a71-f7cbdf0255ba	\N	Hazel Bracy	flemingamanda@mccall-berry.com	78645
224	615 Bissonet Ln	2017-07-24T00:00:00	6506741	6fa63dc9-749d-4bc3-92d8-c1b5a355c103	\N	Magdalene Gray	ssnyder@sutton.biz	78752
225	4804 Blueberry Trl	2017-04-05T00:00:00	7211237	47ff8f38-9ff7-4ed3-8fc2-39935c6fcd05	\N	Debra Brown	fjordan@williams.org	78723
226	8207 Shadowood Dr	2017-04-28T00:00:00	8703751	1c0e3117-9c86-4811-812f-04af768f5e2a	\N	Benjamin Roza	millerallison@martinez.com	78757
227	20201 Merlin Falcon Trl	2017-08-13T00:00:00	7400105	610f583b-9fbe-4caa-b45a-19ddf424dc79	\N	Robert Calhoun	garmstrong@leon-lee.com	78660
228	7002 Mount Carrell Dr	2017-06-26T00:00:00	4347430	e091586b-393f-4850-9025-90743790b54c	\N	Lawrence Hay	chall@gmail.com	78745
229	18408 Deep Well Dr	2017-06-18T00:00:00	7644388	d646a9fc-26b0-414c-9158-994224d29774	\N	Kerrie Losee	wharmon@hotmail.com	78738
230	208 Mauldin St	2017-04-24T00:00:00	1172460	40bd5a85-509a-4196-a8c6-9bce0e1c4f70	\N	William Gray	alice24@gray.com	78628
231	6714 Roseborough Dr	2017-01-02T00:00:00	2078406	c330e8a6-0919-45e5-b73c-aa44e29bebac	\N	Ann Moore	abray@luna.info	78747
232	615 Bissonet Ln	2017-06-19T00:00:00	6506741	4d89bdec-4701-4279-b044-4b30d5b39e1c	\N	Rhonda Oharra	raymond96@gmail.com	78752
233	5232 Texas Bluebell Dr	2017-05-14T00:00:00	9929958	255265ca-8cb1-4a9a-bae9-d7c1611f50f1	\N	Gary Anderson	johngonzalez@gmail.com	78669
234	4241 Canyon Glen Cir	2017-03-28T00:00:00	5159943	f2b427b2-60ba-459f-b662-d66c181ee5d1	\N	Mary Capozzoli	riveradavid@yahoo.com	78732
235	2101 Old Mill Rd	2017-03-11T00:00:00	3520525	f4104cf9-3e1b-4701-af4c-06474430bd1b	\N	Brian Hough	jonesjames@gmail.com	78613
236	12808 Hughes St	2017-09-29T00:00:00	9744423	6dd69a42-da5f-4862-a8e7-664574c700bf	\N	Sau Evanich	vaughnchristopher@smith.biz	78732
237	7403 Mifflin Kenedy Ter	2016-11-29T00:00:00	1200793	a78e4c11-971e-473e-b61b-163dad648d08	\N	James Jehlicka	jonathan55@yahoo.com	78749
238	8306 Rockwood Ln	2017-01-10T00:00:00	2444054	911e1ec2-94cb-4ec1-b126-a946dbcf887c	\N	Anita Coley	eric84@hotmail.com	78757
239	3813 Lunet Ring Way	2017-07-15T00:00:00	1655074	049060cd-8d63-45c0-a6bf-93b9cf6bb40c	\N	Nancy Merry	jessica52@green.com	78660
240	303 Provines Dr	2017-03-15T00:00:00	8267643	e004125c-f034-4f9f-9b83-0de041a3f4a3	\N	Sara Hanks	cassandrahughes@hotmail.com	78753
241	1501 Bamfield Cv	2016-12-06T00:00:00	8454141	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Ernest Ishikawa	williamsgwendolyn@gmail.com	78665
242	18721 Derby Hill Ln	2017-07-22T00:00:00	2302501	a0f11982-b6d8-413b-8a16-06f94e989f3c	\N	Daryl Brown	francesreyes@gmail.com	78660
243	7403 Mifflin Kenedy Ter	2017-06-30T00:00:00	1200793	dee56603-5f57-4f21-be23-9571d8220627	\N	Mary Duckett	joanne66@wu.org	78749
244	19809 Ocotillo Dr	2017-05-11T00:00:00	3609686	6344dd98-c767-4b62-b32b-9a65c4cf25fd	\N	Theresa Koziol	laurie23@james.info	78660
245	4241 Canyon Glen Cir	2017-05-25T00:00:00	5159943	6c01e32c-c36b-43e4-b7c4-65753d10d77b	\N	William Wright	umaddox@gmail.com	78732
246	11209 Midbury Ct	2017-04-05T00:00:00	3204186	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Cheryl Collins	john61@foster-anderson.com	78748
247	2209 Village View Loop	2017-06-19T00:00:00	4392103	6ba870c2-f954-4718-b000-eb37f5ef2e0f	\N	Nina Gracie	donna86@castaneda.com	78660
248	101 E Starling Dr	2017-01-07T00:00:00	7072259	b374302c-ae6c-49d3-82c6-4b0b2e2c4293	\N	Burt Reed	nicholas83@gmail.com	78753
249	6811 La Salle Dr	2017-10-15T00:00:00	1406502	09f64e2b-aa53-47ea-bd05-421ba01890fa	\N	Jacob Cecena	fboone@hotmail.com	78723
250	18521 Tanner Bayou Loop	2017-02-03T00:00:00	3431864	a17a88a1-6ba5-48dd-bc5e-bb2050049fdb	\N	Pauline Daniels	rford@yahoo.com	78738
251	3023 Sea Jay Dr	2016-11-28T00:00:00	3838901	2095c1cb-3abb-406b-bdc6-8f03cee2d8c6	\N	Kristen Mininger	lynchchristian@stuart.org	78745
252	5232 Texas Bluebell Dr	2017-08-20T00:00:00	9929958	aaf624a6-e8f4-4bfb-b1fa-4b2a419f40ab	\N	Marilyn Fagan	cbates@hotmail.com	78669
253	1408 Haley Gray Dr	2017-06-11T00:00:00	8758387	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Sarah Black	williamsmith@smith.com	78660
254	2503 Durlston Ct	2016-12-10T00:00:00	8781991	50cb3a67-0fbf-4d31-b0cc-818a7a77cb79	\N	Brain Leonard	greenediane@smith.com	78613
255	20602 Hoover Cv	2016-12-17T00:00:00	6667513	318fd211-c685-4519-8122-a808d2ce87d1	\N	Sheryl Stephens	timothyavila@yahoo.com	78645
256	3704 Gable Dr	2017-06-15T00:00:00	1101901	406ae92c-a6e5-471e-af2d-d5dc5386ecd6	\N	Andy White	wware@henderson.net	78759
257	5600 Teri Rd	2017-05-03T00:00:00	1571836	337f0562-8775-4757-9875-dcb8f19c54c0	\N	Stephen Causey	gambleedward@martin.com	78744
258	713 Black Isle Dr	2016-11-16T00:00:00	8024615	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Mary Williams	kevin80@ruiz-evans.com	78660
259	8840 Francia Trl	2017-07-10T00:00:00	2049696	aaf624a6-e8f4-4bfb-b1fa-4b2a419f40ab	\N	Frances Mcculler	shane79@yahoo.com	78748
260	4241 Canyon Glen Cir	2017-02-23T00:00:00	5159943	352d5c74-9b0f-418e-be4d-e28d93100287	\N	Jose Virgil	edwin92@gmail.com	78732
261	10308 Peekston Dr	2016-10-17T00:00:00	8407368	8d515ae8-c088-444e-a8d4-85ce033b47ab	\N	Lloyd Camacho	ucoffey@chavez-harrison.com	78726
262	21008 Huckabee Bnd	2017-04-13T00:00:00	6404898	8571549d-5520-445f-b74b-5e71505dcdbd	\N	Erin Williams	kayla55@gmail.com	78660
263	312 Celery Loop	2017-07-09T00:00:00	7791493	6ba870c2-f954-4718-b000-eb37f5ef2e0f	\N	Robert Hammond	mary33@alexander.com	78748
\.


--
-- Name: ix_de_assign_offer_requests_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ix_de_assign_offer_requests_index ON public.offer_requests USING btree (index);


--
-- PostgreSQL database dump complete
--

