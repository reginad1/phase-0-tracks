
interior_design = {
  :name => "",
  :age => "",
  :number_of_kids => "",
  :decor_theme => "",
}


  puts "What is your name?"
  name = gets.chomp
  interior_design[:name]= name

puts "What is your age?"
age = gets.chomp
interior_design[:age] = age

puts "How many kids do you have?"
number_of_kids = gets.chomp
interior_design[:number_of_kids] = number_of_kids

puts "What is the decor theme of your living space?"
decor = gets.chomp
interior_design[:decor_theme] = decor

p interior_design

puts "Is there anything you need to change?"
change = gets.chomp
if change == "name"
  puts "enter your name"
  name_2 = gets.chomp
  interior_design[:name] = name_2
elsif change == "age"
  puts "what is your age?"
  new_age = gets.chomp
  interior_design[:age] = new_age
elsif change == "kids"
  puts "how many kids do you have?"
  new_kids = gets.chomp
  interior_design[:kids] = new_kids
elsif change == "decor"
  puts "What is your decor theme"
  new_decor = gets.chomp
  interior_design[:decor_theme] = new_decor
else
  puts "Thank you!"
end