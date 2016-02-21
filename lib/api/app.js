var express = require('express');
var app = express();
var path = require('path');
var beers = require('./models/beers.json')

console.log(__dirname + '/static');
app.use(express.static(__dirname + '/../../static'));

app.get('/', function(req, res) {
	res.sendFile(path.join(__dirname + '/../ui/index.html'));
});

app.get('/api/', function(req, res) {
	res.send('Hello World!');
});

app.get('/api/beers', function(req, res) {
	res.send(beers);
});

app.listen(3000, '0.0.0.0', function() {
	console.log('Example app listening on port 3000!');
});