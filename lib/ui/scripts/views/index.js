'use-strict'

var Beers = require('../collections/beers');
var BeersListView = require('./beer-list');
var UserView = require('./user');
var UserModel = require('../models/user');
var template = require('../../templates/application.hbs');

module.exports = Backbone.Marionette.LayoutView.extend({
  template: template,

  regions: {
    beerList: '[data-region=beer-list]',
    user: '[data-region=user]'
  },

  events: {
    "change #beer-tried": "onBeerTriedSelected",
    "change #beer-season": "onBeerSeasonSelected"
  },

  initialize: function(options) {
    this.beers = options.beers;
  },

  onBeerTriedSelected: function(event){
    switch(event.currentTarget.value) {
    case 'Tried it.':
        this.renderBeerListView(this.filterCollectionByTried(this.beers, this.userView.model, true));
        break;
    case 'Need it.':
        this.renderBeerListView(this.filterCollectionByTried(this.beers, this.userView.model, false));
        break;
    default:
        this.renderBeerListView(this.beers);
    }
  },

  onBeerSeasonSelected: function(event){
    switch(event.currentTarget.value) {
    case 'Non-Seasonal':
        this.renderBeerListView(this.filterCollectionByBeerSeason(this.beers, 'none'));
        break;
    case 'Spring':
        this.renderBeerListView(this.filterCollectionByBeerSeason(this.beers, 'spring'));
        break;
    case 'Summer':
        this.renderBeerListView(this.filterCollectionByBeerSeason(this.beers, 'summer'));
        break;
    case 'Fall':
        this.renderBeerListView(this.filterCollectionByBeerSeason(this.beers, 'fall'));
        break;
    case 'Winter':
        this.renderBeerListView(this.filterCollectionByBeerSeason(this.beers, 'winter'));
        break;
    default:
        this.renderBeerListView(this.beers);
    }
  },

  filterCollectionByBeerSeason: function(collection, filter) {
    var filteredCollection = new Backbone.Collection(collection.toJSON());
    filteredCollection.models = _.filter(collection.models, function(model) { 
      return model.attributes.season == filter; 
    });
    return filteredCollection;
  },

  filterCollectionByTried: function(collection, userTriedModel, shouldFilterByTried) {
    var filteredCollection = new Backbone.Collection(collection.toJSON());
    filteredCollection.models = _.filter(collection.models, function(model) { 
      if (shouldFilterByTried) {
        return _.contains(userTriedModel.attributes['beers-tried'], model.attributes.id);
      } else {
        return !_.contains(userTriedModel.model.attributes['beers-tried'], model.attributes.id);
      }
    });
    return filteredCollection;
  },

  onRender: function() {
    var self = this;
    var userModel = new UserModel();
    userModel.fetch().done(function() {
      self.renderBeerListView(self.beers);
      self.userView = new UserView({model: userModel});
      self.user.show(self.userView);
    });
  },

  renderBeerListView: function(collection) {
    var beerListView = new BeersListView({
      collection: collection
    });
    this.beerList.show(beerListView);
  }
});





