class Teacher < ApplicationRecord
    has_many :students
    has_many :questions
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
