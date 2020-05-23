class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :assignments
end
