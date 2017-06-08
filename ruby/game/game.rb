class Game

  def initialize(mystery_word)
    @mystery_word = mystery_word
    @guess_count = 0
    @is_over = false
  end

  def split_word
    @check_this_word = @mystery_word.split('')
    @mystery_word.length
  end

  def guessing
    @guessing_game = @mystery_word.split('')
    @guessing_game.map! do |letter|
      letter.tr('abcdefghijklmnopqrstuvwxyz','_')
    end
  end

  def check_word(letter)
    if @check_this_word.include? letter
      new_index = @check_this_word.index(letter)
      @guessing_game.delete_at(-1)
      @guessing_game.insert(new_index, letter)
    else
      @guessing_game
    end
  end

end

puts "Hello user 1! Please enter a word to start the game"
  word = gets.chomp
  game = Game.new(word)
  game.split_word

puts "Hello user 2! Please enter a letter to begin guessing user one's word.  You will have #{word.length} tries to guess letters"
  game.guessing
  guess = gets.chomp
  game.check_word(guess)