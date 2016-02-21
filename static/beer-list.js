(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){

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
},{"./routers/application":3,"./views/beer-list":4}],2:[function(require,module,exports){
module.exports = Backbone.Collection.extend({
    url:  '/api/beers'
});
},{}],3:[function(require,module,exports){

module.exports = Backbone.Router.extend({
  routes: {
    '': 'home'
  }
});
},{}],4:[function(require,module,exports){
var Beers = require('../collections/beers');

module.exports = Backbone.View.extend({
  el: '.page',
  render: function() {
    var that = this;
    var beers = new Beers();
    beers.fetch({
      success: function() {
        var template = createTemplate('beer-list', {beers: beers.models});
        that.$el.html(template);
      }
    });
  }
});
},{"../collections/beers":2}]},{},[1]);
