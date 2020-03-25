class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @user = params[:user]
    @url  = 'users_path'
    mail(to: @user.email, subject: 'Welcome Learning')
  end
end
