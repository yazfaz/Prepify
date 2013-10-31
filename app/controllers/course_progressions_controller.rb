class CourseProgressionsController < ApplicationController
  before_action :set_course_progression, only: [:show, :edit, :update, :destroy]
  before_filter :authorize_current_student

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

  # GET /course_progressions/1/edit
  def edit
  end

  # POST /course_progressions
  # POST /course_progressions.json
  def create
    @course_progression = CourseProgression.new(course_progression_params)

    respond_to do |format|
      if @course_progression.save
        format.html { redirect_to @course_progression, notice: 'Course progression was successfully created.' }
        format.json { render action: 'show', status: :created, location: @course_progression }
      else
        format.html { render action: 'new' }
        format.json { render json: @course_progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_progressions/1
  # PATCH/PUT /course_progressions/1.json
  def update
    respond_to do |format|
      if @course_progression.update(course_progression_params)
        format.html { redirect_to @course_progression, notice: 'Course progression was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @course_progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_progressions/1
  # DELETE /course_progressions/1.json
  def destroy
    @course_progression.destroy
    respond_to do |format|
      format.html { redirect_to course_progressions_url }
      format.json { head :no_content }
    end
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
