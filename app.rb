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
  families = Family.all
  if families.each == params['name'].split.each
  then
    params['name'].split.each { |name| angiosperm.families.create(name: name)}
    redirect "/angiosperm/#{ angiosperm.id }"
  else
    redirect "/angiosperm/#{ angiosperm.id }"
  end
end

get '/family/:id' do
  @family = Family.find(params['id'])
  @genera = @family.genera
  erb :submit_genera
end

post '/family/:id/genera' do
  family = Family.find(params['id'])
  genera = Genus.all
  if genera.each == params['name'].split.each
  then
    params['name'].split.each { |name| family.genera.create(name: name) }
    redirect "/family/#{ family.id }"
  else
    redirect "/family/#{ family.id }"
  end
end

get '/genus/:id' do
  @genus = Genus.find(params['id'])
  @species = @genus.species
  erb :submit_species
end

post '/genus/:id/species' do
  genus = Genus.find(params['id'])
  species = Species.all
  if species.each == params['name'].split.each
  then
    params['name'].split.each { |name| genus.species.create(name: name)}
    redirect "/genus/#{ genus.id }"
  else
    redirect "/genus/#{ genus.id }"
  end
end
