'use-strict'

module.exports = Backbone.Model.extend({
	defaults: {
		'isGood': true
	},
	urlRoot: '/api/beers',

	sync: function(method, collection, options){
        options = options || {};
        options.beforeSend = function (xhr) {
            var user = "nick";// your actual username
            var pass = "password";// your actual password
            var token = user.concat(":", pass);
            xhr.setRequestHeader('Authorization', ("Basic ".concat(Application.authToken())));
        };
        return Backbone.sync.call(this,method, collection, options);
    }

	// sendAuthentication = function (xhr) {
	// 	var user = "myusername";// your actual username
	// 	var pass = "mypassword";// your actual password
	// 	var token = user.concat(":", pass);
	// 	xhr.setRequestHeader('Authorization', ("Basic ".concat(btoa(token))));
	// }

	//http://stackoverflow.com/questions/10081728/add-request-header-on-backbone
	// fetch({
	// 	beforeSend: sendAuthentication 
	// });
});