class Comic < ActiveRecord::Base
	
	attr_accessible :name, :description, :avatar, :avatar_file_name, :title_text
	
	has_attached_file :avatar, :default_url => "missing.png"
  
  validates_attachment_presence :avatar
  
  validates_attachment_content_type :avatar, :content_type => [ 'image/png' ],
                                    :message => ": Will it dont make no sense to upload something like that"
                                    
	def previous
	  Comic.find_by_id(id - 1, :select => 'id')
	end

	def next
    Comic.find_by_id(id + 1, :select => 'id')
	end

	
	

end
