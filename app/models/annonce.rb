class Annonce
  include Mongoid::Document

  belongs_to :author, validate: false
  field :name, type: String
  field :photo, type: String
  field :description, type: String

end
