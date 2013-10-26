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

  # How do I grab the user id?

  # def new_course(user,page)
  # new_course = CourseProgression.create(user_id: user.id, subject_id: page.subject.id , page_id: first_page.id)
  # end

  # def update_course(user, page)
  #   courses = CourseProgression.find_all_by_user_id(user.id)
  #   courses.each do |course|
  #     if course.subject_id == page.subject.id
  #       course.update(page_id: page.id)
  #     else 
  #       new_course(user,page)
  #     end
  #   end
  # end
end
