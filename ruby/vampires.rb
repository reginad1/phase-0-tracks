puts "How many employees are you processing today?"
  x = gets.chomp.to_i

while x > 0

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

  valid_input = false

  while valid_input == false
    puts "Please list your allergies. When you are done say done"
    allergies = gets.chomp

    if allergies == "done"
      puts "Thank you!"
      valid_input = true
    elsif allergies == "sunshine"
      puts "#{name} is a vampire!"
      valid_input = true
    else
      valid_input = false
    end
  end

x = x-1
end

puts "...actually never mind! What do these questions have to do with anythings? Let's all be friends."