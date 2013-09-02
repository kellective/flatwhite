class User < ActiveRecord::Base

	validates_presence_of :user_name
	validates_uniqueness_of :user_name
	has_many :coffee_attempts
	# Include default devise modules. Others available are:
	# :token_authenticatable, :confirmable,
	# :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable

	attr_accessible :user_name, :email, :password, :password_confirmation, :remember_me


end
