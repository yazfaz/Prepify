module Admin::PagesHelper

  def show_page(page = @page)
    
      page.sequence_id
      page.pageable_type
    
    
  end

  def show_body(pageable = @pageable)
    if pageable.body.empty?
      "<p> No content </p>".html_safe 
    else  
       pageable.body
    end
  end

  def show_choices(pageable = @pageable)
    if pageable.choices.empty?
      "<p> No content </p>".html_safe 
    else  
       pageable.choices
    end
  end

  def show_correct_answer(pageable = @pageable)
    if pageable.correct_answer.empty?
      "<p> No content </p>".html_safe 
    else  
       pageable.correct_answer
    end
  end

end
