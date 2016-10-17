Rails.application.routes.draw do

	get 'api/' => "application#version"
	get 'api/beers' => "beers#beers"
	get 'api/users/:user' => "users#get_user"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
