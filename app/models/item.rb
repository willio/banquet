class Item < ActiveRecord::Base
	
	has_many :ingredients
	belongs_to :banquet

end
