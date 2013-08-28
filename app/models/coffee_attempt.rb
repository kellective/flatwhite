class CoffeeAttempt < ActiveRecord::Base

	has_many :comments
	
	mount_uploader :picture, PhotoUploader


end
