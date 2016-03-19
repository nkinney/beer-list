'use-strict'

module.exports = Backbone.Model.extend({
	defaults: {
		'isGood': true
	},
	urlRoot: '/api/beers',

	sync: function(method, collection, options){
        options = options || {};
        options.beforeSend = function (xhr) {
            xhr.setRequestHeader('Authorization', ("Basic ".concat(Application.authToken())));
        };
        return Backbone.sync.call(this,method, collection, options);
    }
});