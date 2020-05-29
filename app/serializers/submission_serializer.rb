class SubmissionSerializer < ActiveModel::Serializer
  attributes :id, :grade, :student_id, :assignment_id
  belongs_to :student
end
