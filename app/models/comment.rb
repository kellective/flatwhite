class Comment < ActiveRecord::Base
	belongs_to :coffee_attempt
	belongs_to :user

	validates_presence_of :body
  	
end


