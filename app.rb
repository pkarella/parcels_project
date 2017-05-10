require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')

get('/') do
  erb(:index)
end

get('/parcels/new') do
  erb(:results)
end

get('/parcels') do
  length = params.fetch('length')
  width = params.fetch('width')
  weight = params.fetch('weight')
@parcel = Parcel.new(length,width,weight)
 erb(:final_results)
end
