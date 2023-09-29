class DirectorsController < ApplicationController
  def get_youngest
    @x = Director.where({DoB: Director.maximum(:DoB)}).first
    render({:template => "directors_templates/youngest_director"})
  end
  def get_oldest
    @x = Director.where({DoB: Director.minimum(:DoB)}).first
  render({:template => "directors_templates/oldest_director"})
  end
  def list
   @x = Director.all 
  render({template: "directors_templates/directors_list"})
  end
  def id
    @id = params.fetch("id")
    @x = Director.where({id: @id}).first
    @y = Movie.all.where({director_id: @id})
  render({template: "directors_templates/id"})
  end
end
