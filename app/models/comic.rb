class Comic < ActiveRecord::Base
	
	attr_accessible :name, :description, :avatar, :avatar_file_name
	
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/missing.png"

	
	def previous
	  Comic.find_by_id(id - 1, :select => 'id')
	end

	def next
  	  Comic.find_by_id(id + 1, :select => 'id')
	end

	
	

end
