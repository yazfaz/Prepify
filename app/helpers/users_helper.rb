module UsersHelper

  def progress_report(courses)    
    report = ""
    courses.sort.each do |course|
      if course.completed_at.nil?        
        last_page_user_completed = course.page_id.to_f
        total_pages = course.subject.pages.count.to_f 
        user_progress = last_page_user_completed / total_pages * 10
        report += content_tag(:h3) { "#{course.subject.name}: You are #{user_progress.round} % Completed" }
        report += progress_bar(user_progress)
      else
        report += content_tag(:h3, class: 'completed') {  "#{course.subject.name}: Completed!" }
      end
    end
    report.html_safe
  end
end