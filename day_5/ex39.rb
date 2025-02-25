states = {
'Oregon':'OR',
'Florida' => 'FL',
'California' => 'CA',
'New York' => 'NY',
'Michigan' => 'MI',
'Colorado' => 'CO',
'Washington' => 'WA'
}

cities = {
'CA' => 'San Francisco',
'MI' => 'Detroit',
'FL' => 'Jacksonville',
'CO' => 'Denver',
'WA' => 'Seattle'
}

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

puts '-' * 10
puts "NY State has:#{cities['NY']}"
puts "OR State has:#{cities['OR']}"

puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

puts '-' * 10
states.each do | state, abbrev |
  puts "#{state} is abbreviated is #{abbrev}"
end

puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}."
end

puts '-' * 10
# by default ruby ays "nil" when something isn't in there
state = states['Texas']

if !state
  puts "Sorry, no Texas."
end

#default values using ||+ with nil results
city = cities['TX']
city ||= 'Does not exist'
puts "The city for the state 'TX' is #{city}"
