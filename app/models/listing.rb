  class Listing
  include Mongoid::Document
  include ImageUploader::Attachment.new(:photo)

  field :author, type: String
  field :name, type: String
  field :photo_data, type: String
  field :description, type: String
  field :price, type: Float
  field :date, type: DateTime
  field :tags, type: Array
end
