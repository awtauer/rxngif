class PicturesController < ApplicationController
  def show

  	@photo = Picture.find_by({ :id => params[:id] })
  	
  end

  def index

  	@list_of_photos = Picture.all

  end

  def new

  end

  def create

  end
end
