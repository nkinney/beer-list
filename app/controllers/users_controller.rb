class UsersController < ActionController::API
	def get_user
		user_id = params['user']
		render json: Users.where(username: user_id)
	end
end