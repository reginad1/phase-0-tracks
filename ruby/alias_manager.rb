#ask user what their real name is

#create a fake name
  #make spy_name variable to call split on user input for 'real name' which will turn the string into an array.
  #call .reverse to swap last name with first name.
  #convert reversed names into an array of individual letters.


def name_reverse (name)
spy_name = name.split
new_name = spy_name.reverse.join
new_name.to_s
new_name.split('')
p new_spy_name = new_name.downcase.split('')
end

puts "What is your first and last name?"
name = gets.chomp
name_reverse(name)

#make a new array called vowels, containing 'a','e','i','o','u'
#use index to identify vowel
#iterate through the array, to search for vowels.  Anytime a vowel is present, perform .next to move to next vowel in vowel array.

#create an array called vowels containing 'aeiou'
#iterate through spy_name
vowels = ['a','e','i','o','u']