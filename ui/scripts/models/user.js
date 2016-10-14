module.exports = Backbone.Model.extend({
	urlRoot: '/api/users',

	tryBeer: function(beerId) {
		var beersTried = this.get('beersTried');
		beersTried.push(beerId);
		this.set('beersTried', beersTried);
		this.save();
	},

	sync: function(method, collection, options){
		if (method != "create") {
	        options = options || {};
	        options.beforeSend = function (xhr) {
	            xhr.setRequestHeader('Authorization', ("Basic ".concat(Application.authToken())));
	        };
		}
        return Backbone.sync.call(this,method, collection, options);
    }
});