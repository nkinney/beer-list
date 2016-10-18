class Beers
  include Mongoid::Document
  field :id, type: Integer
  field :brewery, type: String
  field :beer, type: String
  field :style, type: String
  field :season, type: String
  field :abv, type: Float
  field :ibu, type: Float
  field :description, type: String
end
