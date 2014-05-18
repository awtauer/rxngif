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

  	#ruby to receive the form data, create a new row, assign attributes based on form data & save it
  	#show something in the view to confirm

  	p = Picture.new
  	p.source = params["source"]
  	p.caption = params["caption"]
  	p.save

  	#redirect_to("http://localhost:3000/all_pictures")

  end
end
