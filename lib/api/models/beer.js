
//mongoimport --db beer-list --collection beers --drop --jsonArray --file ./beers.json
//mongoimport -h ds015879.mlab.com:15879 -d beer-list -c beers --jsonArray -u BeerListUser -p Iamabeeruser --file ./beers.json
var mongoose = require('mongoose');
var Schema = mongoose.Schema;

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
