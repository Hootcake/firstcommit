class Customer < ActiveRecord::Base
	has_many :memberships, dependent: :destroy
	validates :username, uniqueness: true
	validates :username, presence: true 
	validates :password, presence: true 
	validates :name, presence: true 
	validates :surname, presence: true 
	validates :password, confirmation: true
	validates :email, presence: true 
	validates :phone, numericality: { only_integer: true }
	validates :emergency_number, numericality: { only_integer: true }
	has_many :enrollments 
	has_secure_password
end
