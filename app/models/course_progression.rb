class CourseProgression < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject

  before_create :set_first_sequence_id  


  def set_first_sequence_id
    self.page_id ||= subject.first_sequence_id
  end

end
