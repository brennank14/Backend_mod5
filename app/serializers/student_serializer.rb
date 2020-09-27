class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :teacher_id
  has_many :student_questions
  # belongs_to :teacher, serializer: TeacherSerializer
end