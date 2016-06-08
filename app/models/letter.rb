class Letter < ActiveRecord::Base
	belongs_to :user
	belongs_to :greeting
	belongs_to :body
	belongs_to :closing
end
