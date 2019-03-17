# frozen_string_literal: true

class AnnonceController < ApplicationController

  def index
    current_user
  end

  def create
    @annonce = Annonce.new
    redirect_to 'list_path' unless current_user
  end

end
