module SubjectsHelper

  def start_page(user, subject)
    first_page = subject.pages.order("sequence_id ASC").first
    # How do I grab the user id?
    new_course(user, first_page)
    page_to_pageable_path(user, first_page)
  end

end
