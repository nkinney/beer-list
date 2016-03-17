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
    debugger;
    this.trigger('loginSuccess');
  },

  onNewUserClick: function() {
    event.preventDefault();
    var userModel = new UserModel();
    this.listenTo(userModel,'sync', this.onCreateComplete);
    this.viewNewUserModal = new ViewNewUserModal({
      model: userModel
    });
    this.viewNewUserModal.show();
    // this.listenTo(this.viewNewUserModal, "createComplete", this.onCreateComplete);
    // this.viewNewUserModal.$el.on('hidden.bs.modal', this.onCreateComplete);
  }
});