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
  @word_reveal
  end
end

puts "Hello user 1! Please enter a word to start the game"
  word = gets.chomp
  p game = WordGame.new(word)

puts "Hi user 2.. here is your clue: \n #{game.user_clue}\n"



guesses = 1

allowed_guesses = word.length + 5

until guesses >= allowed_guesses
 game.word_reveal

  puts "Enter a letter to guess the word."
  letter = gets.chomp
  p game.letter_checker(letter)

  if word == game.word_reveal.join()
    puts "you won!"
  break

  end

  guesses += 1
end

if word != game.word_reveal.join()
  puts "You lost :("
end