class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :name
  has_many :questions
end
