class ComicsController < ApplicationController
	before_filter :authenticate, :only => [:edit, :update]
  before_filter :admin, :only => [:new, :edit]
  
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
  		redirect_to @comic
  	else
  		render :action => 'new' 	
  	end
  end

  def edit
    @comic = Comic.find(params[:id])
    @title = "Edit Comic"
  end
  
  def update
    @comic = Comic.find(params[:id])
    if @comic.update_attributes(params[:comic])
      redirect_to @comic
    else
      @title = "Edit user"
      render "edit"
    end
  end
  
  private
    def admin
      redirect_to(root_path) unless current_user.admin?    
    end

    def authenticate
      deny_access unless signed_in?
    end
    
end


