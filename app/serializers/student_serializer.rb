class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :teacher_id, :user_type
  has_many :student_questions
  # belongs_to :teacher, serializer: TeacherSerializer
end