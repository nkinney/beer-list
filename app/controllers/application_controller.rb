class ApplicationController < ActionController::API

	def get_user
		user_id = params['user']
		puts "params: #{params.inspect}"
		found_user = users.select { |u| u['id'] == user_id }
		render json: found_user
	end

	def users
		users_json_string = '[{ "_id":"56ecc9d751b370b72ed12aa2", "id":"nkinney", "email":"nkinney@gmail.com", "username" : "nkinney", "password" : "$2a$05$IbgElGXHDcw5lZRMFp1lkOlBUikGxXEhcq9CnrIKuCFFJxjC3ISO2", "firstname" : "Nick", "lastname" : "Kinney", "beersTried" : [ ], "__v" : 0 },{ "_id" : "57f38ddee5fa55632fb73c32", "id" : "nick", "email" : "me@my.com", "username" : "nick", "password" : "$2a$05$PSyQ.XWfuXszCCpEm4Lh8.tZNYHMMeF.zN694JZtH4HrkmwBwvnmW", "firstname" : "nick", "lastname" : "kin", "beersTried" : [ ], "__v" : 0 }]'
		JSON.parse(users_json_string)
	end

	def version
		render body: "Beer List API"
	end
end