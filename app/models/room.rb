class Room < ActiveRecord::Base
	has_many :equipment, dependent: :destroy
	self.inheritance_column = nil
	validates :type, presence: true 
end
