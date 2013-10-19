class Subject < ActiveRecord::Base
  has_one :course_progression
end
