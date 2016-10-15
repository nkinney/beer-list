require_relative('../../beer-list')
class ApplicationController < ActionController::API
	def beers
		parsed_beers = ParsedBeers.new
		parsed_beers.parse_beers_string
		render json: parsed_beers.get_beers_json
	end
	def version
		render body: "Beer List API"
	end
end
