module UsersHelper

  def progress_report(user,courses)    
    report = ""

    courses.sort.each do |course|
      if course.completed_at.nil?        
        last_page_user_completed = course.page_id
        total_pages = course.subject.pages.count 
        user_progress = last_page_user_completed * 100 / total_pages

        report += content_tag(:h3) { "#{course.subject.name}: You are #{user_progress} % Completed" }
        report += progress_bar(user_progress)
      else

        report += content_tag(:h3, class: 'completed') { "Completed!" }
      end

    end

    report.html_safe
  end
end