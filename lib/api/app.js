var express = require('express');
var mongoose = require('mongoose');

var routes = require('./routes/index');
// var app = require('./config/express')

mongoose.connect('mongodb://localhost/beer-list'); 
var app = express();

app.use(express.static(__dirname + '/../../static'));

app.use('/', routes);

app.listen(3000, '0.0.0.0', function() {
	console.log('Example app listening on port 3000!');
});