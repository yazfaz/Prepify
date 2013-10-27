module UsersHelper

  def get_progress_report(user,courses)    
    courses.sort.each do |course|
      if course.completed_at.nil?
        last_page_user_completed = course.page_id
        total_pages = course.subject.pages.count 
        user_progress = last_page_user_completed / total_pages *100
        @status = "You are #{user_progress} % Completed" 
        @subject = course.subject.name
        return  @subject, @status 
      else
        @status = "Completed!"
        @subject = course.subject.name
        return @subject , @status 
      end
    end 
  end
end


