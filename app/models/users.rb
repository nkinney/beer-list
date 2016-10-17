class Users
  include Mongoid::Document
  field :id, type: String
  field :email, type: String
  field :username, type: String
  field :password, type: String
  field :firstname, type: String
  field :lastname, type: String
  field :beersTried, type: Array
end
