class UserMailer < ApplicationMailer
  default from: 'from@example.com'

  def welcome_email
    @user = params[:user]
    @url = 'Learning'
    mail(to: @user.email, subject: 'Welcome Learning')
  end
end
