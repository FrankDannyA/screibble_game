const express = require('express');
var http = require('http');
const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);
const mongoose = require('mongoose');

var io = require('socket.io')(server);

//middleware
app.use(express.json());

//connect to mongoDB
const DB = "mongodb+srv://DanFra:DanFra123@cluster0.lzwsbrf.mongodb.net/?retryWrites=true&w=majority";
mongoose.connect(DB).then(() => {
    console.log("Connected to MongoDB");
}).catch((e) => {
    console.log("Error connecting to MongoDB: " + e );
})

server.listen(port, "0.0.0.0", () => {
    console.log("Server is running on port " + port);
})