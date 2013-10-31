class ApplicationController < ActionController::Base
  # Uncomment to require admin login on the whole application
  before_action :authenticate_user!

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Accept the following parameters if in the devise controller
  before_action :configure_permitted_parameters, if: :devise_controller?

 def admin?
  current_user.admin == true
 end

  protected

  # Adds values that can be stored in the DB from user input
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:sign_up) << :name
  end

  def update_course_progression(subject, page)
    course_progression = current_user.course_progressions.where(subject_id: subject.id).first
    course_progression ||= current_user.course_progressions.create(subject_id: subject.id)
    course_progression.update_attributes(:page_id => page.sequence_id)
  end

  def authorize_admin
    unless admin?
      flash[:error] = "unauthorized access"
      redirect_to user_subjects_path(current_user)
    end
  end

  def authorize_current_student
  
    unless current_user.id.to_s == params[:user_id]
      flash[:error] = "unauthorized access"
      redirect_to user_subjects_path(current_user)
    end
  end

end
