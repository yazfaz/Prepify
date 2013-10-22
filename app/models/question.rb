class Question < ActiveRecord::Base
  serialize :choices, Array
  attr_accessible :choices
  has_one :page, as: :pageable

  has_one :answer

  def serialize_choices
    self.choices = self.choices.split(',').collect()
  end
end
