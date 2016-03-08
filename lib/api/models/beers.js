
//mongoimport --db beer-list --collection beers --drop --jsonArray --file ./beers.json
var mongoose = require('mongoose');
var Schema = mongoose.Schema;

mongoose.connect('mongodb://localhost/beer-list'); 

var BeerSchema = new Schema({  
    id: Number,
    brewery: String,
    beer: String,
    style: String,
    season: String,
    abv: Number,
    ibu: Number,
    description: String
}, 
    { collection : 'beers' });

module.exports = mongoose.model('Beer', BeerSchema);
