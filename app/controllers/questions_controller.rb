class QuestionsController < ApplicationController
 before_filter :authorize_current_student

  def show
    @question = Question.find(params[:id])
    @page = @question.page
    @subject = Subject.find(params[:subject_id])    
    update_course_progression(@subject, @page) 
  end

end
