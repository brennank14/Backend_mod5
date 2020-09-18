class Question < ApplicationRecord
   belongs_to :teacher
   has_many :student_questions 
   has_many :students, through: :student_questions
end
