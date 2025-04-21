require "sinatra"
require "sinatra/reloader"

get("/") do
  erb :form
end

get("/process_roll") do
  @dice = params[:dice].to_i
  @sides = params[:sides].to_i
  @rolls = Array.new(@dice) { rand(1..@sides) }
  erb :result
end
