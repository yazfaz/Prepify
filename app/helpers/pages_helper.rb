module PagesHelper

  def next_page(user, page)
    current_page = page.sequence_id.to_i
    next_page =  page.subject.pages.find_by_sequence_id(current_page + 1)
    if next_page.nil?
      # How do I grab the user id?
      # update_course(user, current_page)
      return user_subjects_path
    else
      update_course(user, next_page)
      page_to_pageable_path(user, next_page) 
    end
  end

  def show_image(pageable)
    if pageable.image?
      image_tag(pageable.image_url(:thumb))
    else  
      "No image" 
    end
  end
end
