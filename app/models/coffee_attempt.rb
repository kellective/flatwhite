class CoffeeAttempt < ActiveRecord::Base

	has_many :comments
	belongs_to :user
	
	mount_uploader :picture, PhotoUploader

	validates_presence_of :name, :description, :picture, :user_id




  	def self.latest
		CoffeeAttempt.last
  	end
end

