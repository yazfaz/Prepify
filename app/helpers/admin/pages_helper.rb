module Admin::PagesHelper

  def show_body(pageable = @pageable)
    if pageable.body.empty?
      "<p> No content </p>".html_safe 
    else  
       pageable.body
    end
  end
end
