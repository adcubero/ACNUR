class Company < ActiveRecord::Base
	has_many :trannigs
	has_many :jobs
end
