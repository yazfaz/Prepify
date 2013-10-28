module SubjectsHelper

  def start_page(user, subject)
    first_page = subject.pages.order("sequence_id ASC").first
    new_course(@user, first_page)
  end
end
