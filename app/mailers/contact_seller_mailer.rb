class ContactSellerMailer < ApplicationMailer

  def contact(target, article, message)
    @target = target
    @article = article
    @message = message
    mail(to: target, subject: article.name)
  end

end
