class Notifier < ActionMailer::Base
  default from: "austinqperson@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.subscription_confirmation.subject
  #
  def subscription_confirmation
    @greeting = "Hi"

    mail( to: "Joe joseph.charles.marshall@gmail.com", subject: "Test")
  end
end
