class Comic < ActiveRecord::Base
	
	attr_accessible :index
	
	def previous
	  Comic.find_by_id(id - 1, :select => 'id')
	end

	def next
  	  Comic.find_by_id(id + 1, :select => 'id')
	end

	
	

end
