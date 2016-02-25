'use-strict'

var BeerListController = require('../controllers/beer-list');

module.exports = Marionette.AppRouter.extend({
  controller: new BeerListController(),
  appRoutes: {
    '': 'defaultRoute'
  }
});