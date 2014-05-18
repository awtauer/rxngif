Rxngif::Application.routes.draw do
  	
  	get("/edit_picture_form/:id", { :controller => "pictures", :action => "edit" })
	get("/update_picture/:id", { :controller => "pictures", :action => "update" })
  	get("/delete_picture/:id", { :controller => "pictures", :action => "destroy" })
  	get("/create_picture", { :controller => "pictures", :action => "create" })
  	get("/new_picture_form", { :controller => "pictures", :action => "new" })
  	get("/all_pictures", { :controller => "pictures", :action => "index" })
  	get("/picture_details/:id", { :controller => "pictures", :action => "show" })
		

end
