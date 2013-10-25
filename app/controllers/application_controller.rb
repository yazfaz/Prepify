class ApplicationController < ActionController::Base
  # Uncomment to require admin login on the whole application
  before_action :authenticate_user!

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Accept the following parameters if in the devise controller
  before_action :configure_permitted_parameters, if: :devise_controller?

  def admin?
    admin == true
  end

  protected

  # Adds values that can be stored in the DB from user input
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:sign_up) << :name
  end


  def auto_sequence(subject, page_type) 
    if subject.pages.count == 0
      page = subject.pages.create
      page.sequence_id = 1
      page.pageable = page_type
      page.save
    else
      last_page_sequence_id = subject.pages.order('sequence_id').last.sequence_id.to_i
      next_sequence_id = last_page_sequence_id + 1
      page = subject.pages.create
      page.sequence_id = next_sequence_id
      page.pageable = page_type
      page.save
    end
  end
end
