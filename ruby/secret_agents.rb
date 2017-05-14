#define encrypt method, add an argument.  Set index equal to 0.  While the index is less that the argument's length, put the next letter in the alphabet.  Loop until all letters are cycled through.

def encrypt(string)
index = 0
empty_string = ""
  while index < string.length
    if string[index] == "z"
       empty_string = "a"
    else empty_string = empty_string + string[index].next
    end
  index += 1
  end
return empty_string
end

#define decrypt method, add an argument.  Set index equal to 0.  While the index is less that the argument's length, index each letter in the argument.  Find that index in a_to_z string.  Identify that index.  Print the letter before that index using variable - 1.

def decrypt(string)
index = 0
a_to_z = "abcdefghijklmnopqrstuvwxyz"

  while index < string.length
  new_string = string[index]

  position = a_to_z.index(new_string)
  second_index= position-1
  print a_to_z[second_index]
index += 1
end
return string
end


#decrypt(encrypt("swordfish"))

puts "Hello secret agent! Would you like to decrypt or encrypt a password?"
  choice = gets.chomp
  until choice == "encrypt" || choice == "decrypt"
    puts "Choose encrypt or decrypt for your password method."
    choice = gets.chomp
  end

puts "What is your password?"
    password = gets.chomp
    if choice == "encrypt"
    p encrypt(password)
    elsif choice == "decrypt"
    p decrypt(password)
    end

