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
  letter.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
end

letters.join

end

puts "What is your first and last name?"
name = gets.chomp
name_reverse(name)