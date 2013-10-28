module ApplicationHelper  
  def page_to_pageable_path(user, page) 
    if page.pageable_type == "Question"    
      return user_subject_question_path(user.id, page.subject_id, page.pageable.id)
    elsif page.pageable_type == "Instruction"
      return user_subject_instruction_path(user.id, page.subject_id, page.pageable.id)
    else
      return user_subjects_path
    end
  end

  def new_course(user,page)
    new_course = CourseProgression.create(user_id: user.id, subject_id: page.subject_id , page_id: page.sequence_id)
    page_to_pageable_path(user, page)
  end

  def update_course(user, page)
    course = CourseProgression.find_by(user_id: user.id, subject_id: page.subject_id)
    course.update(page_id: page.sequence_id)
    page_to_pageable_path(user,page)
  end
  
  def progress_bar(width)
    string = '<div class="progress large-6 success round"><span class="meter" style="width: ' + width.to_s + '%"></span></div>'
    string.html_safe
  end
end



