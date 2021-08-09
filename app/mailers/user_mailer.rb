class UserMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'

  def welcome_email(user)
    @user = user 
    @url  = 'http://the_event_project.fr/login' 
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end
end