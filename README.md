
API Node.js Express code in folder /search_server
Frontend React Code in folder folder /react-frontend

Usage:

The API Server:

In the terminal, go into the folder /search_server, and invoke index.js using 
$ nodemon index.js 
or other Node tools

The React Frontend:
In the terminal, go into the folder /react-frontend, and invoke App.js using 
$ nodemon App.js 
or other Node tools


TODO:

1.When parsing the kitchen features, I didn't split the string into substrings, separated
by comma, so "{Sundeck, Open Space}" would just count as one feature. I should have done some data preprocessing to clean it.

2.When returning the response of the last port, tax/lookup, I didn't finish the pagination
fucntionality, so the whole json string just returns in a big, long page.

