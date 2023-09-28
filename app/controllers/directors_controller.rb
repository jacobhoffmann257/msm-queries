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
    #directors_list = []
    #x= Director.all.order(:id)
   # x.each do |z|
    #  directors_list.push(Director.where({id: "#{z}"}).first)
      
   # end

    #puts x.inspect
  render({template: "directors_templates/directors_list"})
  end
end
