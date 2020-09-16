class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :points
  belongs_to :teacher, serializer: TeacherSerializer
end
