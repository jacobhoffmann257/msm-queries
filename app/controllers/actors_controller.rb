class ActorsController < ApplicationController
  def id
    id =  params.fetch("id")
    @x = Actor.where({id: id}).first
    @y = Character.all.where({actor_id: id})
    render({template: "actors_template/id"})
  end
  def all
    @x = Actor.all
    render({template: "actors_template/actor_list"})
  end
end
