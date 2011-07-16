module ApplicationHelper
	
	def title
		if @title.nil?
			"Afghanistanitors"
		else
			@title
		end
	end
end
