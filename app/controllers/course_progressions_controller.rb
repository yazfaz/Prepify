class CourseProgressionsController < ApplicationController
  before_action :set_course_progression, only: [:show, :edit, :update, :destroy]
  # before_filter :authorize_current_student

  # GET /course_progressions
  # GET /course_progressions.json
  def index
    @course_progressions = CourseProgression.all
    
  end

  # GET /course_progressions/1
  # GET /course_progressions/1.json
  def show
  end

  # GET /course_progressions/new
  def new
    @course_progression = CourseProgression.new
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_progression
      @course_progression = CourseProgression.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_progression_params
      params[:course_progression]
    end
end
