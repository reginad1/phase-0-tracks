# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + ":("
#   end

#   def self.yell_happily(words)
#     words + "!" + ":):):)"
#   end

# end

# p Shout.yell_angrily("I am so angry")

# p Shout.yell_happily("I love coding")


module Shout
  def yell_angrily(words)
    words.upcase + "!!!" + ":("
  end
end

class New_Coder
  include Shout
end

class Toddler
  include Shout
end

new_coder = New_Coder.new
p new_coder.yell_angrily("I want to throw my computer into the grand canyon")

toddler = Toddler.new
p toddler.yell_angrily("I want ice-cream and I want it now")