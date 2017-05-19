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