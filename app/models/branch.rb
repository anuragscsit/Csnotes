class Branch < ActiveRecord::Base
	has_many :users
	has_many :profiles
end
