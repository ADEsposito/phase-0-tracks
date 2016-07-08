class Santa

  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  # getter methods for age, ethnicity, and gender attributes
  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # def gender
  #  @gender
  # end

  # attribute-changing methods
  def celebrate_birthday=(age)
    @age = @age + 1
    p @age
  end

  def get_mad_at=(reindeer_name)
    index = @reindeer_ranking.index(reindeer_name)
    @reindeer_ranking << reindeer_name
    @reindeer_ranking.delete_at(index)
    p @reindeer_ranking
  end

  # setter method for @gender attribute
  # def gender=(new_gender)
  #  @gender = new_gender
  # end
 end

#santa = Santa.new
#santa.eat_milk_and_cookies("snickerdoodle")
#santa.speak

#santas = []
#example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
#example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#example_genders.length.times do |i|
  #santas << Santa.new(example_genders[i], example_ethnicities[i])
#end

santa = Santa.new("female", "white")
p "The #{santa.age} year old santa is a #{santa.ethnicity} #{santa.gender}."
santa.gender = "male"
p "santa is now a #{santa.gender}"
santa.get_mad_at=("Rudolph")
santa.celebrate_birthday=(@age)
santa.celebrate_birthday=(@age)
santa.get_mad_at=("Prancer")
santa.celebrate_birthday=(@age)
