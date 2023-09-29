Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors/youngest", {:controller => "directors", :action => "get_youngest"})
  get("/directors/eldest",{:controller => "directors", :action => "get_oldest"})
  get("/directors", {:controller => "directors", :action => "list"})
  get("/directors/:id",{controller: "directors", action: "id"})
  get("/movies/:id", {controller: "movies", action: "id"})
  get("/movies",{controller: "movies", action: "all"})
  get("/actors",{controller: "actors", action: "all"})
  get("/actors/:id", {controller: "actors", action: "id"})
end
