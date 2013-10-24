class Page < ActiveRecord::Base
  before_create :check_sequence
  belongs_to :pageable, polymorphic: true

  belongs_to :subject

  def check_sequence
    last_page = Page.last
    next_sequence_id = (last_page.sequence_id + 1)
    return next_sequence_id
  end
end
