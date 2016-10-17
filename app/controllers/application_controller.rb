class ApplicationController < ActionController::API
	def version
		render body: "Beer List API"
	end
end