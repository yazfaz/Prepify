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
  
  def progress_bar(width)
    if width > 0
      string = '<span class="meter" style="width: ' + width.to_s + '%"></span>'
    else 
      string = '<div></div>'
      string.html_safe
    end
  end
end



