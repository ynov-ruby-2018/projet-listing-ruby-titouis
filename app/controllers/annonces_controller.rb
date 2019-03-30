# frozen_string_literal: true

class AnnonceController < ApplicationController

  include ImageUploader::Attachment.new(:photo)

  def index
    current_user
  end

  def create
    @annonce = Annonce.new
    redirect_to 'list_path' unless current_user
  end

end
