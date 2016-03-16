'use-strict'

var template = require('../../templates/login.hbs');

module.exports = Backbone.Marionette.LayoutView.extend({
  template: template,

  events: {
    'click #login-user-btn': 'onLogInUser'
  },

  ui: {
    inputUserName: '#inputUserName',
    inputPassword: '#inputPassword'
  },

  onLogInUser: function(event) {
  	event.preventDefault();
  	Application.user = this.ui.inputUserName.val();
  	Application.pass = this.ui.inputPassword.val();
  	// debugger;
  	this.trigger('loginSuccess');
  }
});