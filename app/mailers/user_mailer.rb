class UserMailer < ApplicationMailer

  def confirmation#(journey)
    #@journey = journey  # Instance variable => available in view

    mail(to: "allard.au@gmail.com", subject: 'Demande confirmée')
    # This will render a view in `app/views/user_mailer`!
  end

end
