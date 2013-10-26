module SubjectsHelper

  def start_page(subject)
    first_page = subject.pages.order("sequence_id ASC").first
    # How do I grab the user id?
    # new_course(user, first_page)
    page_to_pageable_path(first_page)
  end

end
