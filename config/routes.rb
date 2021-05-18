Rails.application.routes.draw do

get("/", {:controller => "bike", :action => "index"})
#get("/filler", {:controller => "bike", :action => ""})
get("/selected", {:controller => "bike", :action => "selected"})
get("/:destination", {:controller => "bike", :action => "destination"})



end
