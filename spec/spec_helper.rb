ENV['RACK_ENV'] = 'test'

require 'bundler/setup'
Bundler.require :default, :test

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

RSpec.configure do |config|
  config.after :each do
    Angiosperm.all.each do |angiosperm|
      angiosperm.destroy
    end
    Family.all.each do |family|
      family.destroy
    end
    # Genus.all.each do |genus|
    #   genus.destroy
    # end
    Species.all.each do |species|
      species.destroy
    end
  end
end
