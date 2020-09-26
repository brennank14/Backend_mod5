class StudentQuestionSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :question_id, :grade, :feedback, :answer, :graded
  has_one :question
  belongs_to :student, serializer: StudentSerializer
  belongs_to :question, serializer: QuestionSerializer
end
