class AppMailer < ActionMailer::Base
  default from: "info@travelmentor.com"

  def send_welcome_email(user)
    @user = user
    mail to: user.email, subject: "Welcome to Travel Mentor!"
  end

  def send_forgot_password(user)
    @user = user
    mail to: user.email, subject: "Please reset your password"
  end
end