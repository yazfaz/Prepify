module SubjectsHelper

  # Method to determine the first page of a lesson
  def start_page(user, subject)
    first_page = subject.pages.order("sequence_id ASC").first
    page_to_pageable_path(user, first_page) 
  end

  # Method to determine the current page of a lesson the student is on
  def current_page(user, subject)
    course_progression = user.course_progressions.where(subject_id: subject.id).first
    current_sequence_id = course_progression.page_id
    current_page = subject.pages.where(sequence_id: current_sequence_id).first
    page_to_pageable_path(user, current_page) 
  end


end
