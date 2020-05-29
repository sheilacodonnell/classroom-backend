class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :teacher_id
  has_many :submissions
end
