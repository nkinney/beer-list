module.exports = Backbone.Model.extend({
	urlRoot: '/api/users',
	idAttribute: 'username',

	tryBeer: function(beerId) {
		var beersTried = this.get('beersTried');
		beersTried.push(beerId);
		this.set('beersTried', beersTried);
		this.save();
	},

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
});