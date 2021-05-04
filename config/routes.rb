Rails.application.routes.draw do

get("/", {:controller => "bike", :action => "index"})
#get("/filler", {:controller => "bike", :action => ""})
get("/:destination", {:controller => "bike", :action => "destination"})


end
