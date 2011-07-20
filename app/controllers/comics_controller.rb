class ComicsController < ApplicationController
	
def index
	@comic = Comic.find_by_id(params[:index])
end

def show
	@comic = Comic.find_by_id(params[:id])
end

def new
	@comic = Comic.new
	@title = "New"
end

def create
  	@comic = Comic.new(params[:comic])
  	if @comic.save
  		flash[:success] = "I don't even know if this shows up, does it? If it does congrats!"
  		redirect_to @comic
  	else
  		render :action => 'new' 	
  	end
  end
end