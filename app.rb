require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end


get("/dice/:elephant/:zebra") do
  
  @number_of_dice = @params.fetch("elephant").to_i
  @how_many_sides = @params.fetch("zebra").to_i
  
  @rolls =[]

  @number_of_dice.times do
    die = rand(1..@how_many_sides)
    @rolls.push(die)
  end

  erb(:flexible)
end
