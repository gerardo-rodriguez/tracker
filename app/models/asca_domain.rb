class AscaDomain < ActiveRecord::Base
	has_and_belongs_to_many :logs
end
