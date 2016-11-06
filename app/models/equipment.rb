class Equipment < ActiveRecord::Base
	belongs_to :room
	validates :room_id, presence: true 
	validates :description, presence: true 
end
