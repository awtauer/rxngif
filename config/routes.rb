Rxngif::Application.routes.draw do
  	get("/all_pictures", { :controller => "pictures", :action => "index" })
  	get("/picture_details/:id", { :controller => "pictures", :action => "show" })


end
