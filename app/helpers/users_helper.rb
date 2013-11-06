module UsersHelper

  def progress_report(courses)    
    report = ""
    courses.sort.each do |course|
      if course.completed_at.nil?        
        last_page_user_completed = course.page_id
        total_pages = course.subject.pages.count
        user_progress = last_page_user_completed / total_pages * 10
        # report += progress_bar(user_progress)
        report += content_tag(:h3, class: 'panel report-card incomplete')  { "#{course.subject.name}: You are #{user_progress.round}% Completed "}
        
      else
        report += content_tag(:h3, class: 'panel report-card complete') {  "#{course.subject.name}: Completed!" }
      end
    end
    report.html_safe
  end
end
