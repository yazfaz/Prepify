module UsersHelper

  def get_progress_report(user,courses)
    i = 0
    while i<= courses.length 
      courses[i].subject.name
      if courses[i].completed_at.nil?
        last_page_user_completed = courses[i].page_id 
        total_pages = courses[i].subject.pages.count 
        user_progress = last_page_user_completed * 100 / total_pages
        @status = "You are #{user_progress} % Completed" 
        @subject_completed = courses[i].subject.name
        return  @subject_completed , @status 
      else
        status = "Completed!"
        return courses[i].subject.name , status       
      end
    end 
  end
end
