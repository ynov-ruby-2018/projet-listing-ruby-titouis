class ContactController < ApplicationController

  def contact
    target = params[:target]
    article = params[:article]
    message = params[:message]
    ContactSellerMailer.contact(target, article, message)
  end

end
