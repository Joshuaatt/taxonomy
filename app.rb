require 'bundler/setup'
require 'pry'

Bundler.require :default
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
also_reload 'lib/**/*.rb'

get '/' do
  erb :index
end

get '/angiosperms' do
  @families = Family.all
  erb :submit_families
end

post '/families' do
  params['name'].split.each { |name| Family.create(name: name)}
  redirect '/angiosperms'
end
