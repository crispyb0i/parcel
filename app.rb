require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/show') do
  width = params.fetch('width').to_i()
  length = params.fetch('length').to_i()
  height = params.fetch('height').to_i()
  weight = params.fetch('weight').to_i()
  speed = params[:speed]
  @new_parcel = Parcel.new(width, length, height, weight, speed)
  erb(:show)
end
