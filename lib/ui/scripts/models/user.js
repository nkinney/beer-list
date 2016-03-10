module.exports = Backbone.Model.extend({
	urlRoot: '/api/users',
	idAttribute: 'username',

	tryBeer: function(beerId) {
		this.attributes.beersTried.push(beerId);
		this.save();
	},

	// save: function (attrs, options) {
	// 	options || (options = {});

	// 	options.contentType = 'application/json';
	// 	options.data = JSON.stringify(attrs);
	// 	debugger;
	// 	Backbone.Model.prototype.save.call(this, attrs, options);
	// }
});