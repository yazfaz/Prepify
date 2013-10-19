class Subject < ActiveRecord::Base
  has_many :users, through: :course_progressions
  has_many :course_progressions
  has_many :pages
end
