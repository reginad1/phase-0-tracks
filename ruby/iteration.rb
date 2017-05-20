def complimenter
  puts "Good Morning Sunshine!"
  yield("hair", "jokes")
  puts "Have an awesome day!"

end

complimenter {|x, y| puts "You are a fabulous queen who has awesome #{x} and #{y}."}


dogs = ["beagle", "lab", "maltipoo", "deshund"]

p dogs
dogs.each do |dogs|
  puts dogs + " are very cute"
end

p dogs

dogs.map! do |dogs|
  puts dogs
  dogs.chop
end

p dogs

#method that filters a data structure and deletes with condition 'including l'
dogs.delete_if {|dogs| dogs.include? "l"}

#method that keeps variables including certain conditions
dogs.keep_if {|dogs| dogs.include? "e"}

#another way to filter data
sample_size = [1, 4, 5, 19, 20, 48, 10, 2]

sample_size.reject { |num| num > 25}

dog_names = {
  dog_one: "Fluffy",
  dog_two: "Mazzy",
  dog_three: "Spot",
  dog_four: "Lucy",
}

p dog_names

dog_names.each do |dog_number, dog_name|
  puts "#{dog_number} is named #{dog_name}"
end

p dog_names

#method that deletes with condition including "u"
dog_names.delete_if { |number, name| name.include? "u"}

#method that keeps variables if they meet certain conditions
dog_names.keep_if { |number, name| name.include? "u"}

#another way to filter data
rainy_months = {
  january: 2,
  february: 1,
  march: 3,
  april: 5,
  may: 5,
}

p rainy_months

rainy_months.select { |month, inches| inches > 2}

