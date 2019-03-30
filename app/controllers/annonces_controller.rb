# frozen_string_literal: true

class AnnoncesController < ApplicationController

  include ImageUploader::Attachment.new(:photo)

  def show
    @annonces = Annonce.all
    current_user
  end

  def new
    @annonce = Annonce.new
    redirect_to 'list_path' unless current_user
  end

  def create
    current_annonce = params[:annonce]
    Annonce.create!(
        {
            author: current_user[:email],
            name: current_annonce[:name],
            photo: current_annonce[:photo],
            description: current_annonce[:description]
        }
    )

    redirect_to annonces_path
  end

end
