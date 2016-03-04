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
