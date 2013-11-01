class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy]

  # GET /subjects
  # GET /subjects.json
  def index
    @subjects = Subject.all_with_pages
    @user = current_user
  end

  # GET /subjects/1
  # GET /subjects/1.json
  def show
    @subject = Subject.find(params[:id]) 
  end 


  def complete
    course_progression = current_user.course_progressions.where(:subject_id => params[:subject_id]).first
    course_progression.update_attributes(completed_at: Time.zone.now)
    redirect_to user_path(current_user)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject
      @subject = Subject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_params
      params.require(:subject).permit(:section, :name)
    end
end
