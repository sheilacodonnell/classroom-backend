class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :title, :due_date, :description, :teacher_id
end
