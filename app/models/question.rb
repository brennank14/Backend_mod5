class Question < ApplicationRecord
   belongs_to :teacher
   has_many :student_questions 
end
