class Comment < ActiveRecord::Base
	belongs_to :coffee_attempt


	validates_presence_of :body
  	validates_presence_of :user
  	
end
