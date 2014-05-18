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
	redirect_to("http://localhost:3000/all_pictures")

  end

  def destroy

  	p = Picture.find_by({ :id => params[:id] })
  	p.destroy
	redirect_to("http://localhost:3000/all_pictures")
  
  end

  def edit

	@pic = Picture.find_by({ :id => params[:id] })
  end

  def update
  	@picture = Picture.find_by({ :id => params[:id] })
  	@picture.caption = params[:caption]
  	@picture.source = params[:source]
  	@picture.save
	redirect_to("http://localhost:3000/picture_details/#{@picture.id}")


  end

end
