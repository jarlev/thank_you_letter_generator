class Greeting < ActiveRecord::Base
	belongs_to :user
	has_many :letters
end
