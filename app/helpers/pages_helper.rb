module PagesHelper

  # method to call for the next page of a lesson
  def next_page(user, page)
    current_page = page.sequence_id
    next_page =  page.subject.pages.find_by_sequence_id(current_page + 1)
    if next_page.nil?
      return user_subject_complete_path(user, page.subject)
    else
      page_to_pageable_path(user, next_page) 
    end
  end
  
  # method to call for the preivous page of a lesson
  def previous_page(user,page)
    current_page = page.sequence_id
    previous_page = page.subject.pages.find_by_sequence_id(current_page - 1)
    if previous_page.nil?
      return user_subjects_path(user)
    else
      return page_to_pageable_path(user, previous_page)
    end
  end

  # method to call the progress of a student based on the page the student completed
  def progress(page)
    current_page = page.sequence_id
    total_pages = page.subject.pages.count
    progress = current_page / total_pages * 100
    return progress
  end

  # method to call the image if available for either a question or instruction
 def show_image(pageable)
    if pageable.image?
      image_tag(pageable.image_url(:thumb))
    else  
      "No image" 
    end
  end
end
