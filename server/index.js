//immporting modules
const express = require('express');
const http = require('http');
const mongoose = require("mongoose");
const app = express();
const port = process.env.PORT || 3000;

var server = http.createServer(app);
var io = require('socket.io')(server);
//middle ware

//data from cline side

app.use(express.json());
const DB =  "mongodb+srv://cluster0.uvrhr2h.mongodb.net/" --apiVersion 1 --username deshnick89";
mongoose.connect(DB).then(() => {
console.log("Connection sucessfull");

}).catch((e) =>{
console.log(e);
} )
//PROMIS


server.listen(port, '0.0.0.0',() => {
console.log("Server started and ruuning port "+ port);

});

// import http frpm 'http.dart'