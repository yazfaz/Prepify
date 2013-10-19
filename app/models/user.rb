class User < ActiveRecord::Base
  has_many :subjects, through: :course_progressions
  has_many :course_progressions
end
