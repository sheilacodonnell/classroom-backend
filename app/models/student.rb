class Student < ApplicationRecord
  has_many :submissions
  belongs_to :teacher

  def calculate_grade_average
    # after an assignment submission is created or updated, recalculate the grade_average for the student

  end
end