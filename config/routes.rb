Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors/youngest", {:controller => "directors", :action => "get_youngest"})
  get("/directors/eldest",{:controller => "directors", :action => "get_oldest"})
  get("/directors", {:controller => "directors", :action => "list"})
  get("/directors/:id",{controller: "directors", action: "id"})
end
