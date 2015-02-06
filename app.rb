require 'bundler/setup'
require 'pry'

Bundler.require :default
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
also_reload 'lib/**/*.rb'
Dir[File.dirname(__FILE__) + '/config/initializers/*.rb'].each { |file| require file }

get '/' do
  @angiosperm = Angiosperm.find('1')
  erb :index
end

get '/angiosperm/:id' do
  @families = Family.all
  erb :submit_families
end

post '/families' do
  angiosperm = Angiosperm.find('1')
  if Family.find_by_name(params['name']) == nil
  then
    params['name'].split.each { |name| angiosperm.families.create(name: name)}
    redirect "/angiosperm/#{ angiosperm.id }"
  else
    break
  end
end

get '/family/:id' do
  @family = Family.find(params['id'])
  @genera = @family.genera
  erb :submit_genera
end

post '/family/:id/genera' do
  family = Family.find(params['id'])
  params['name'].split.each { |name| family.genera.create(name: name) }
  redirect "/family/#{ family.id }"
end

get '/genus/:id' do
  @genus = Genus.find(params['id'])
  @species = @genus.species
  erb :submit_species
end

post '/genus/:id/species' do
  genus = Genus.find(params['id'])
  params['name'].split.each { |name| genus.species.create(name: name)}
  redirect "/genus/#{ genus.id }"
end
