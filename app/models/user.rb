class User < ActiveRecord::Base
  has_many :course_progressions
end
