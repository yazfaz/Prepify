class RegistrationsController < Devise::RegistrationsController

  def create
    super
    Notifier.subscription_confirmation(@user).deliver
  end

end