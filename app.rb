require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/user'
require_relative 'lib/event'




User.new("courtois.a@outlook.com", 27)
User.new("lasaucisse@outlook.com", 55)

Bbq = Event.new("16-10-2023 16:50", 4*60*60, "Barbecue Party", ["Axel", "Sam", "Flo", "Alex", "Vincent", "Cyprien", "Nelly"])


binding.pry
puts "End of file"