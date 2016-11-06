class Userenroll < ActiveRecord::Base
	belongs_to :activity
	belongs_to :customer
end
