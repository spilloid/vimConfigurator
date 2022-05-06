import express from "express";
const app = express();
const port = 3001; // default port to listen

// define a route handler for the default home page
app.get( "/", ( req, res ) => {
    res.send( "Welcome to Joe & Quinn'sa O365 super report center!" );
} );

// start the Express server
app.listen( port, () => {
    console.log( `server started at http://localhost:${ port }` );
} );