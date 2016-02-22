
var ApplicationController = require('../controllers/base');

module.exports = Marionette.AppRouter.extend({
  controller: new ApplicationController(),
  appRoutes: {
    '': 'defaultRoute'
  }
});