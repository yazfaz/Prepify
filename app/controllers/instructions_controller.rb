class InstructionsController < ApplicationController
  before_filter :authorize_current_student
  def show
    @instruction = Instruction.find(params[:id])  
    @page = @instruction.page
    @subject = Subject.find(params[:subject_id])    
    update_course_progression(@subject, @page) 
  end

end
