require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/numbers_to_words')
require('pry')

get('/') do
  erb(:index)
end

get('/words') do
  @number = params.fetch('number')
  @word = params.fetch('number').numbers_to_words()
  erb(:words)
end
