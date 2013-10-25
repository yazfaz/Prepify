module PagesHelper

  def next_page(page)
    current_page = page.sequence_id.to_i
    next_page =  page.subject.pages.find_by_sequence_id(current_page + 1)
    if next_page.nil?
      return subjects_path
    else
      page_to_pageable_path(next_page) 
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
