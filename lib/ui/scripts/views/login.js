'use-strict'

var template = require('../../templates/login.hbs');
var UserModel = require('../models/user');
var ViewNewUserModal = require('./modals/new-user');

module.exports = Backbone.Marionette.LayoutView.extend({
  template: template,

  events: {
    'click #login-user-btn': 'onLogInUser',
    'click #create-new-user-btn': 'onNewUserClick'
  },

  ui: {
    inputUserName: '#inputUserName',
    inputPassword: '#inputPassword'
  },

  onLogInUser: function(event) {
  	event.preventDefault();
  	Application.user = this.ui.inputUserName.val();
  	Application.pass = this.ui.inputPassword.val();
  	this.trigger('loginSuccess');
  },

  onCreateComplete: function() {
    event.preventDefault();
    var self = this;
    this.userModel.save().done(function() {
      Application.user = self.userModel.get('username');
      Application.pass = self.userModel.get('password');
      self.trigger('loginSuccess');
    });
  },

  onNewUserClick: function() {
    event.preventDefault();
    this.userModel = new UserModel();
    this.viewNewUserModal = new ViewNewUserModal({
      model: this.userModel
    });
    this.viewNewUserModal.show();
    this.viewNewUserModal.$el.on('hidden.bs.modal', _.bind(this.onCreateComplete, this));
  }
});