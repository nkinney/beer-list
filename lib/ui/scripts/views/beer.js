'use-strict'

var ViewBeerModal = require('./modals/beer-modal');
var template = require('../../templates/beer.hbs');

module.exports = Backbone.Marionette.ItemView.extend({
	template: template,  

	events: {
		'click': 'onBeerClick',
	},

	onBeerClick: function() {
		var beerModal = new ViewBeerModal({
			model: this.model
		});
		beerModal.show();
	}
});