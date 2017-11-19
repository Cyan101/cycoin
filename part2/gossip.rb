require 'sinatra'
require 'colorize'
require 'active_support/time'
require_relative 'client'
require_relative 'helpers'

PORT, PEER_PORT = ARGV.first(2)
set :port, PORT

STATE = ThreadSafe::Hash.new
update_state(PORT => nil)
update_state(PEER_PORT => nil)

MOVIES = File.readlines('movies.txt').map(&:glomp)
@favourite_movie
@version_number
puts "My fav movie, now and forever, is #{@favourite_movie.green}"

update_state(PORT => [@favourite_movie, @version_number])

every(8.seconds) do
  
end

every(3.seconds) do
  
end

post '/gossip' do
  
end
