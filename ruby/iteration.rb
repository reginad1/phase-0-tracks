def complimenter
  puts "Good Morning Sunshine!"
  yield("hair", "jokes")
  puts "Have an awesome day!"

end

complimenter {|x, y| puts "You are a fabulous queen who has awesome #{x} and #{y}."}