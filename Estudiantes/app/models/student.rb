class Student < ApplicationRecord
	has_many :student_course
	has_many :courses, through: :student_course
end
