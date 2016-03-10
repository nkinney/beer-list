module.exports = Backbone.Model.extend({
	urlRoot: '/api/users',
	idAttribute: 'username',

	tryBeer: function(beerId) {
		var beersTried = this.get('beersTried');
		beersTried.push(beerId);
		this.set('beersTried', beersTried);
		this.save();
	}
});