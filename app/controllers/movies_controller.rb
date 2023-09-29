class MoviesController <ApplicationController
def id
  id = params.fetch("id")
  @x = Movie.where({id: id}).first
  @y = Director.where({id: @x.director_id}).first
  render({template: "movies_templates/id"})
end
def all
  @x = Movie.all
  render({template: "movies_templates/movies_list"})
end
end
