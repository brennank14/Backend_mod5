class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :points, :teacher_id
  
  belongs_to :teacher, serializer: TeacherSerializer
end
