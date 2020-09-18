class StudentSerializerSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password, :teacher_id
  has_many: :student_questions
  has_many: :questions, through: :student_questions
  belongs_to :teacher, serializer: TeacherSerializer
end
