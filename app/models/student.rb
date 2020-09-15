class Student < ApplicationRecord
    has_many :student_questions
    belongs_to :teacher
    has_secure_password
end
