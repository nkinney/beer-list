
//mongoimport --db beer-list --collection beers --drop --jsonArray --file ./lib/api/models/beers.json
var mongoose = require('mongoose'),  
    Schema = mongoose.Schema;

var BeerSchema = new Schema({  
    id: Number,
    brewery: String,
    beer: String,
    style: String,
    season: String,
    abv: Number,
    ibu: Number,
    description: String
});

module.exports = mongoose.model('Beer', BeerSchema);
