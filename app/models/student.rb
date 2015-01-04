class Student < ActiveRecord::Base
	has_and_belongs_to_many :groups
	has_and_belongs_to_many :classifications
	has_and_belongs_to_many :ethnicities
	has_and_belongs_to_many :sessions

	belongs_to :grade
end
