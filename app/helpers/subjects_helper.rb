module SubjectsHelper

  def start_page(subject)
    first_page = subject.pages.order("sequence_id ASC").first    
    page_to_pageable_path(first_page)
  end


end
