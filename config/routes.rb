Rxngif::Application.routes.draw do
  	get("/create_picture", { :controller => "pictures", :action => "create" })
  	get("/new_picture_form", { :controller => "pictures", :action => "new" })
  	get("/all_pictures", { :controller => "pictures", :action => "index" })
  	get("/picture_details/:id", { :controller => "pictures", :action => "show" })
	

end
