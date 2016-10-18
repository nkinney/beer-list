class BeersController < ActionController::API
	def beers
		render json: Beers.all
	end
end