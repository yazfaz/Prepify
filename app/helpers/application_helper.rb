module ApplicationHelper
  def page_to_pageable_path(page) 
    if page.pageable_type == "Question"    
      return subject_question_path(page.subject_id, page.pageable.id)
    elsif page.pageable_type == "Instruction"
      return subject_instruction_path(page.subject_id, page.pageable.id)
    else
      return subjects_path
    end
  end
end
