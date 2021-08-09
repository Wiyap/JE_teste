class AttendanceMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'
  
  def confirmation_email(event,user)
    @user = user 
    @event = event
    @url  = 'http://the_event_project.fr/login' 
    mail(to: @user.email, subject: 'Participation validée!') 
  end
end
