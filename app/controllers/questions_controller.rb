class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    @page = @question.page
    @subject = Subject.find(params[:subject_id])    
    update_course_progression(@subject, @page) 
  end

end
