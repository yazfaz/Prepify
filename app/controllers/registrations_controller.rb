class RegistrationsController < Devise::RegistrationsController

  def create
    super
    if @user.save
    Notifier.subscription_confirmation(@user).deliver
    else
    end
  end

end