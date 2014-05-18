class PicturesController < ApplicationController
  def show

  	@photo = Picture.find_by({ :id => params[:id] })
  	
  end
end
