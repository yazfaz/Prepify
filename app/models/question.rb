class Question < ActiveRecord::Base
  serialize :choices, Array
  has_one :page, as: :pageable

  has_one :answer
end
