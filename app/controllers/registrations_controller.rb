class RegistrationsController < Devise::RegistrationsController

  def create
    super
    if @user.save
    Notifier.subscription_confirmation(@user).deliver
    else
    end
  end

  # def index
  #   if current_user.admin?
  #     redirect to admin_subjects_path
  #   else
  #     redirect to user_subjects_path(current_user)
  # end

end