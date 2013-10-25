module Admin::PagesHelper

  def show_page(page)
    
      page.sequence_id
      page.pageable_type
    
    
  end

  def show_body(pageable)
    if pageable.body.empty?
      "No content"
    else  
       pageable.body
    end
  end

   def show_image(pageable)
    if pageable.image?
      image_tag(pageable.image_url(:thumb))
    else  
      "No image" 
    end
  end

  def show_choices(pageable)
    if pageable.choices.empty?
      "<p> No content </p>".html_safe 
    else  
       pageable.choices
    end
  end

  def show_correct_answer(pageable)
    if pageable.correct_answer.empty?
      "<p> No content </p>".html_safe 
    else  
       pageable.correct_answer
    end
  end

end
