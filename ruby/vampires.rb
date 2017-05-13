puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born in?"
year = gets.chomp.to_i
puts "Our company cafeteria orders garlic bread...should we order some for you? (yes or no)"
garlic_bread = gets.chomp
puts "Would you like to enroll in our company's health insurance?"
health_insurance = gets.chomp

age_match = 2017 - year

if (name != "Drake Cula" && name != "Tu Tang") && (age == age_match) && (garlic_bread == "yes" || health_insurance == "yes")
  puts "Probably not a vampire."
elsif age != age_match && ((garlic_bread == "no" && health_insurance == "yes") || (garlic_bread == "yes" && health_insurance == "no"))
  puts "Probably a vampire."
elsif age != age_match && (garlic_bread == "no" && health_insurance == "no")
  puts "Almost certainly a vampire."
elsif (name == "Drake Cula" || name == "Tu Tang") && age == age_match && (garlic_bread == "yes" || health_insurance == "yes")
  puts "Definitely a vampire"
else
  puts "Results inconclusive."
end

puts "#{name}, your age is #{age} and you were born in #{year}. Garlic bread: #{garlic_bread}. Health Insurance #{health_insurance}."
