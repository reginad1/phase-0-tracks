#ask user what their real name is

#create a fake name
  #make spy_name variable to call split on user input for 'real name' which will turn the string into an array.
  #call .reverse to swap last name with first name.
  #convert reversed names into an array of individual letters.
  #iterate though letters in the name array.
    #turn each letter in the array into a string?
    #compare letter with another string
      #if letter is a vowel, compare it with a string of vowels.
      #replace that letter with the next vowel in the string of vowels.
    #compare letter with another string
      #if letter is a consonant, compare consonant with a string of consonants.
      #replace the letter with the next consonant in the string of consonants.

#add loop to ask user their name.  if they type quit, stop the loop.  if they type a name, run the name through the method above.

#create an empty hast.  assign key value to name (which user will input) and assign value to method name.

#outside of loop, delete 'quit' from hash (user will input quit to exit the loop, but we don't want that to appear in the hash of real names and alias name).

#iterate through hash and for each key & value set, print the real name and the fake name.





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
