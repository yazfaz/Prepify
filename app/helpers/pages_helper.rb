module PagesHelper

  def next_page(user, page)
    current_page = page.sequence_id
    next_page =  page.subject.pages.find_by_sequence_id(current_page + 1)
    if next_page.nil?
      # How do I grab the user id?
      course = CourseProgression.find_by(user_id: user.id, subject_id: page.subject.id)
      course.update!(completed_at: DateTime.new)
      return user_path(@user.id)
    else
      update_course(user, next_page)
      page_to_pageable_path(user, next_page) 
    end
  end

  def progress(user, page)
    current_page = page.sequence_id
    total_pages = page.subject.pages.count
    progress = current_page % total_pages
    if progress == 0
      progress_status = 100
      return progress_status
    else 
      progress_status = current_page * 100 / total_pages
      return progress_status
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
