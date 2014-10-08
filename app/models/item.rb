class Item < ActiveRecord::Base
	
	has_many :ingredients
	belongs_to :customer
	
end
