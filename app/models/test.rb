class Test < ActiveRecord::Base
  has_one :answer 
  serialize :choices, Array
  has_one :page, as: :pageable
end
