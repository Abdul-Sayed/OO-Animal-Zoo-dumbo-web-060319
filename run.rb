require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require "pry"

#Test your code here
zoo1 = Zoo.new("SD_Zoo", "San Diego")
animal1 = Animal.new("Killer Whale", 2000, "Jaws Killer", zoo1)

zoo2 = Zoo.new("NY_Zoo", "New York")
animal2 = Animal.new("Beluga Whale", 4000, "BW", zoo2)

zoo3 = Zoo.new("NJ_Zoo", "New Jersey")
animal3 = Animal.new("Great White", 6000, "GW", zoo3)

binding.pry
puts "done"
