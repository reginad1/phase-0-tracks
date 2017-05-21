# puts zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]

# zombie_apocalypse_supplies.each do |x|
#   print x + "*"
# end


# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
# def alphabetizer
#   zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
#                               "shotgun", "compass", "CB radio", "batteries"]

#   p zombie_apocalypse_supplies[7], zombie_apocalypse_supplies[3], zombie_apocalypse_supplies[6], zombie_apocalypse_supplies[5], zombie_apocalypse_supplies[0], zombie_apocalypse_supplies[1], zombie_apocalypse_supplies[4], zombie_apocalypse_supplies[2]
# end

# p alphabetizer


# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

# def check_list
#   zombie_apocalypse_supplies = ["batteries", "binoculars", "CB radio", "compass", "hatchet", "rations", "shotgun", "water jug"]
#   puts "what do you want to check for?"
#   supply = gets.chomp

#   if zombie_apocalypse_supplies.include?(supply)
#     puts "included"
#   else
#   puts "not included"
#   end

# end

# check_list



# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.

# def space_saver
#   zombie_apocalypse_supplies = ["batteries", "binoculars", "CB radio", "compass", "hatchet", "rations", "shotgun", "water jug"]
#   p zombie_apocalypse_supplies
#   until zombie_apocalypse_supplies.length <= 5
#   puts "you must remove supplies, type supply to remove"
#   if zombie_apocalypse_supplies.length > 5
#     supply = gets.chomp
#   zombie_apocalypse_supplies.delete(supply)
#   p zombie_apocalypse_supplies
# else
#   puts "good job, you've condensed your bag to five items"
# end
# end
# end

# space_saver
# ----

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]


# ----

def combine_supplies
  zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

  other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

  combined_list = zombie_apocalypse_supplies + other_survivor_supplies
  combined_list.uniq

end

combine_supplies


# Hash Drills


extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.

# extinct_animals.each do |animal, year|
#   p "#{animal}-#{year}" + "*"

# end

# def extinction_year
#   extinct_animals = {
#   "Tasmanian Tiger" => 1936,
#   "Eastern Hare Wallaby" => 1890,
#   "Dodo" => 1662,
#   "Pyrenean Ibex" => 2000,
#   "Passenger Pigeon" => 1914,
#   "West African Black Rhinoceros" => 2011,
#   "Laysan Crake" => 1923
# }

# extinct_animals.delete_if {|animal, year| year > 2000}
# end

# extinction_year



# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.


# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.

# ----
# def calculation_correction
#   extinct_animals = {
#   "Tasmanian Tiger" => 1936-3,
#   "Eastern Hare Wallaby" => 1890-3,
#   "Dodo" => 1662-3,
#   "Pyrenean Ibex" => 2000-3,
#   "Passenger Pigeon" => 1914-3,
#   "West African Black Rhinoceros" => 2011-3,
#   "Laysan Crake" => 1923-3}

# end

# calculation_correction


# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.


def extinction_checker
 extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}
animal = " "
until animal == "done"

puts "Type in animal to check, type done when complete"
animal = gets.chomp
  if animal == "Tasmanian Tiger" || animal == "Eastern Hare Wallaby" || animal == "Dodo" || animal == "Passenger Pigeon" || animal == "West African Black Rhinoceros" || animal == "Laysan Crake"
    puts "included"
    animal = true
  elsif animal == "Ardean Cat" || animal == "Saiga Antelope"
  puts "not included"
  break if animal == "done"
  end
end
end

extinction_checker

# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.

def correction_corner

 extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}


p extinct_animals.assoc("Passenger Pigeon")
p extinct_animals.delete_if { |animal, year| animal.include? "Passenger Pigeon"}

end

correction_corner