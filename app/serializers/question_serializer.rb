class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :points, :teacher_id
  belongs_to :teacher, serializer: TeacherSerializer
  has_many :student_questions
  has_many :students, through: :student_questions
end
