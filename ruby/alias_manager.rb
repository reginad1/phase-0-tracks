#ask user what their real name is

#create a fake name
  #make spy_name variable to call split on user input for 'real name' which will turn the string into an array.
  #call .reverse to swap last name with first name.
  #convert reversed names into an array of individual letters.

#make a new array called vowels, containing 'a','e','i','o','u'
#use index to identify vowel
#iterate through the array, to search for vowels.  Anytime a vowel is present, perform .next to move to next vowel in vowel array.

#create an array called vowels containing 'aeiou'
#iterate through spy_name


def name_reverse (name)
spy_name = name.split(' ')

new_name = spy_name.reverse.join(' ')
letters = new_name.downcase.split('')

    letters.map! do |letter|
      letters.join
      letter.tr('aeiou', 'eioua')
    end

    letters.map! do |letter|
      letters.join.class
      letter.tr('bcdfghjklmnpqrstvwxyz', '    cdfghjklmnpqrstvwxyzb')
    end

letters.join

end

valid_input = false
agent_names = {}

  while valid_input == false
    puts "What is your first and last name? Type quit when done."
    name = gets.chomp

    if name == "quit"
      puts "Thank you"
      valid_input = true
    else
      name_reverse(name)
      p "Your fake name is #{name_reverse(name)}"
      valid_input = false
    end

  agent_names[name] = name_reverse(name)
  end


agent_names.delete_if {|name, name_reverse| name.include? "quit"}
agent_names.each do |name, name_reverse|
 puts "#{name_reverse} is actually agent #{name}."
 end
