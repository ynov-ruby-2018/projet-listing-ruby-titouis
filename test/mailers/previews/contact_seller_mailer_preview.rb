# Preview all emails at http://localhost:3000/rails/mailers/contact_seller_mailer
class ContactSellerMailerPreview < ActionMailer::Preview

  def contact
    ContactSellerMailer.contact('distil47@gmail.com', nil, 'Salut à tous les amis !')

  end

end
