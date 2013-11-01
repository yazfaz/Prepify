class UsersController < ApplicationController
  before_filter :authorize_current_student
  before_action :set_user, only: [:show, :destroy]
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @courses = current_user.course_progressions
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  # def edit

  #   @user = User.find(params[:id])
  # end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    # unless admin?
    #   authorize_current_student
    # end
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to admin_subjects_path, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params

      
      if current_user.admin?
      params.require(:user).permit(:admin)
    end
    end
end
