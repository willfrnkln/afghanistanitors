class PagesController < ApplicationController
	
  def home
    @comic = Comic.last
  end

  def contact
  	@title = "Contact"
  end
  
  def about
  	@title = "About"
  end

end
