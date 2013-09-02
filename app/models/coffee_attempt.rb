class CoffeeAttempt < ActiveRecord::Base

	has_many :comments
	belongs_to :user
	
	mount_uploader :picture, PhotoUploader

	validates_presence_of :name, :description, :picture




  	def self.latest
		attempt = CoffeeAttempt.last


		if attempt == nil
			NilCoffeeAttempt.new
		else
			attempt
		end
  	end
end



class NilCoffeeAttempt
	def nil?; true; end

	def name; nil ; end
	def description; nil ; end
	def picture; nil ; end
end

