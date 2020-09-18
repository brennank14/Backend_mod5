class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :name
  has_many :students
  has_many :questions

  # def questions
  #   ActiveModel::SerializableResource.new(@object.questions,  each_serializer: QuestionSerializer)
  # end
end
