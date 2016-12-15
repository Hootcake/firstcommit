class Activity < ActiveRecord::Base
	belongs_to :instructor
	belongs_to :room
	has_many :enrollments
	self.inheritance_column = nil
	validates :room_id, presence: true
	validates :instructor_id, presence: true
	validates :class_date, presence: true 
	validates :type, presence: true
	
	def self.search(search)
	where("type LIKE ?", "%#{search}%") 
	end
end
