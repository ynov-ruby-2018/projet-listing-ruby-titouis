class Listing
  include Mongoid::Document

  field :author, type: String
  field :name, type: String
  field :photo, type: String
  field :description, type: String

end
