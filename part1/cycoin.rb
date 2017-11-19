require 'sinatra'
require 'colorize'

BALANCES = {
  'cyan' => 1_000,
}

# @param user
get '/balance' do
  user = params['user']
  puts BALANCES.to_s.yellow
  "#{user} has #{BALANCES[user]}"
end

# @param name
post '/users' do
  name = params['name']
  BALANCES[name] ||= 0
  puts BALANCES.to_s.yellow
  "Done~!"
end

# @param from
# @param to
# @param amount
post '/transfers' do
  from, to = params.values_at('from', 'to').map(&:downcase)
  amount = params['amount'].to_i
  raise unless BALANCES[from] >= amount
  BALANCES[from] -= amount
  BALANCES[to] += amount
  puts BALANCES.to_s.yellow
  "Done!"
end
