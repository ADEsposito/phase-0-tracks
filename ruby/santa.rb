class Santa
  age = 0
  reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"

  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
  end
 end

# Santa.new.speak
# Santa.new.eat_milk_and_cookies("snickerdoodle")
# Santa.new.initialize

# Add some diverse initializations to your file as driver code
santas = []

gender = ["female", "male", "bi-gender", "transgender", "agender", "gender fluid", "N/A"]
ethnicity = ["African-American", "Caucasian", "Hispanic", "Nepali", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

gender.length.times do |i|
  santas << Santa.new(gender[i], ethnicity[i])
end
