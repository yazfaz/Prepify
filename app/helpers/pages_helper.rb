module PagesHelper

  def next_page(page)
    current_page = page.sequence_id
    next_page =  Page.find_by_sequence_id(current_page + 1)
    if next_page = Page.last
      puts "Completed Lesson"
      return subjects_path
    elsif 
      page_to_pageable_path(next_page) 
    end
  end
end
