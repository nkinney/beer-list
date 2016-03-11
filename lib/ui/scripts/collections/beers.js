'use-strict'

BeerModel = require('../models/beer.js');

module.exports = Backbone.Collection.extend({
	model: BeerModel,
    url:  '/api/beers',

    sync: function(method, collection, options){
        options = options || {};
        options.beforeSend = function (xhr) {
            var user = "nick";// your actual username
            var pass = "password";// your actual password
            var token = user.concat(":", pass);
            xhr.setRequestHeader('Authorization', ("Basic ".concat(Application.authToken())));
        };
        return Backbone.sync.call(this,method, collection, options);
    }
});