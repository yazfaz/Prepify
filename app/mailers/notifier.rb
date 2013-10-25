class Notifier < ActionMailer::Base
  default from: "prepifyapp@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.subscription_confirmation.subject
  #
  def subscription_confirmation(user)
    @greeting = "Hi"
    @user = user

    mail( to: "#{@user.name} <#{@user.email}>", subject: "Welcome")
  end
end
