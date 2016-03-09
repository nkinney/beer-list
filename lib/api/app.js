var mongoose = require('mongoose');

var routes = require('./routes/base');
var App = require('./config/express')

mongoose.connect('mongodb://localhost/beer-list'); 

var app = new App();
app.use('/', routes);
app.listen(3000, '0.0.0.0', function() {
	console.log('Example app listening on port 3000!');
});