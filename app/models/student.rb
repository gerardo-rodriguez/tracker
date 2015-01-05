class Student < ActiveRecord::Base
	has_and_belongs_to_many :groups
	has_and_belongs_to_many :classifications
	has_and_belongs_to_many :ethnicities
	has_and_belongs_to_many :logs

	# The foreign key exists in this model
	# "belongs_to" can be thought of as "references"
	belongs_to :grade
	belongs_to :gender
end
