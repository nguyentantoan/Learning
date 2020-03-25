class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @user = params[:user]
    @url  = sign_in_url
    mail(to: @user.email, subject: 'Welcome Learning')
  end
end
