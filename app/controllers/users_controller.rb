class UsersController < ApplicationController

  before_action :set_user, only: [:show, :destroy]

  # GET /users/1
  # GET /users/1.json
  def show
    @courses = current_user.course_progressions
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
