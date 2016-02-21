
var BeerList = require('./views/beer-list');
var Router = require('./routers/application');

function Application() {
  var beerList = new BeerList();
  this.router = new Router();

  this.router.on('route:home', function() {
    beerList.render();
  });
  Backbone.history.start();
}

window.App = new Application();