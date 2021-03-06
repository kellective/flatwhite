class User < ActiveRecord::Base

	validates_presence_of :user_name
	validates_uniqueness_of :user_name
	has_many :coffee_attempts
	has_many :comments
	# Include default devise modules. Others available are:
	# :token_authenticatable, :confirmable,
	# :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable



end
