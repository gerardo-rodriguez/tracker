class Log < ActiveRecord::Base
	has_and_belongs_to_many :types
	has_and_belongs_to_many :referrals
	has_and_belongs_to_many :asca_domains
	has_and_belongs_to_many :interventions
	has_and_belongs_to_many :students
	has_and_belongs_to_many :seen_bies
end
