class Santa
attr_reader :age, :ethnicity
attr_accessor :gender

  def speak
    puts "Ho ho ho! Haaaaaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

  def initialize(gender, ethnicity)
    puts "initializing Santa instance"
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def celebrate_birthday
    @age = @age + 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.insert(8, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name)))
  end


end

santas = []
example_genders = ["non binary", "female", "male", "agender"]
example_ethnicities = ["black", "white", "Japanese", "Puerto Rican"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

p santa = Santa.new("non binary", "white")
p santa.celebrate_birthday
p santa.get_mad_at("Vixen")
p santa.gender = "non conforming"
p santa.age
p santa.ethnicity