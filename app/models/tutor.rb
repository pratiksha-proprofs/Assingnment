class Tutor < ApplicationRecord
  belongs_to :course
  validates :name, :expertise, presence: true
  validates_uniqueness_of :course_id
end
