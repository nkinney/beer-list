class UsersController < ActionController::API
	def get_user
		user_id = params['user']
		user = Users.where(username: user_id)
		# return_user = {:id=>user['_id'], :username=>user['username'], :beerstried=>user['beers']}
		render json: user.first
	end
end