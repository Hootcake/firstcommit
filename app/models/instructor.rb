class Instructor < ActiveRecord::Base
	has_many :activities, dependent: :destroy
	validates :username, uniqueness: true
	validates :username, presence: true 
	validates :password, presence: true 
	validates_uniqueness_of :username
	validates :password, confirmation: true
	has_secure_password
	belongs_to :instructor	
end
