class Submission < ApplicationRecord
  belongs_to :assignment
  belongs_to :student
  validates :grade, presence: true
  after_commit :update_grade_average

  def update_grade_average
    grade_sum = student.submissions.map{|submission| submission.grade}.sum
    number_of_submissions = student.submissions.length
    student.update(grade_average: (grade_sum/number_of_submissions) * 100)
  end
end