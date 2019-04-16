# frozen_string_literal: true

class ListingsController < ApplicationController

  include ImageUploader::Attachment.new(:photo)

  def show
    @listings = Listing.all
    current_user
  end

  def new
    @Listing = Listing.new
    redirect_to 'list_path' unless current_user
  end

  def create
    current_listing = params[:Listing]
    Listing.create!(
        {
            author: current_user[:email],
            name: current_listing[:name],
            photo: current_listing[:photo],
            description: current_listing[:description]
        }
    )

    redirect_to listings_path
  end

end
