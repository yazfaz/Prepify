module ApplicationHelper

  def page_to_pageable_path(page)
    if page.pageable_type == "Question" 
      return subject_question_path(subject, page.pageable)
    elsif page.pageable_type == "Instruction"
      return subject_instruction_path(subject, page.pageable)
    end
  end

end
