class WordGame
attr_accessor :word_array, :word_reveal

  def initialize(secret_word)
    @secret_word = secret_word
    @word_array = @secret_word.split('')
    @word_reveal = []

  end

  def user_clue
     @word_reveal = @word_array.map! do |letter|
      letter.tr('abcdefghijklmnopqrstuvwxyz', '_')
    end
  end

  def letter_checker(letter)
      if @secret_word.include? (letter)
        new_index = @secret_word.index(letter)
        @word_reveal[new_index] = letter
      else
        puts "Nope, try again."
      end
      p @word_reveal
  end
end

puts "Hello user 1! Please enter a word to start the game"
  word = gets.chomp
  game = WordGame.new(word)

puts "Hi user 2.. here is your clue: \n #{game.user_clue}\n"



guesses = 1

until guesses >= word.length + 5

  if word != @word_reveal
  puts "Enter a letter to guess the word."
  letter = gets.chomp
  game.letter_checker(letter)
  elsif word == @word_reveal
  p @word_reveal
  break
  puts "you won"
  end


  guesses += 1
end