=begin
# Release 0
# Name of Class - Dog

# Attributes
  - color : white, yellow, brown, black, brindle, spotted, mix
  - eye color : blue, green, brown
  - coat length : short, medium, long, double-coat
  - age

# Methods(arguments)
  - sit
  - stay
  - play(toy)
=end

class Dog
  attr_reader :color, :age
  attr_accessor :name

  def initialize(name = nil, color, age)
    @name = name
    @color = color
    @age = age
  end

  def sit
    puts "If it fits, it sits!"
  end

  def stay
    puts "I'm so still, I'm like a statue!"
  end

  def play(toy)
    puts "I love to play with my #{toy}!"
  end

  dogs = []

  loop do
    puts "What is this dog's name? (when done naming dogs, please type 'done') :"
    name = gets.chomp
    break if name == "done"
    puts "What color would you like this dog to be? :"
    color = gets.chomp
    puts "How old is #{name}? :"
    age = gets.chomp.to_i
    dogs << Dog.new(name, color, age)
  end

  dogs.each do |dog|
    puts "#{dog.name} is #{dog.age} year old dog that is #{dog.color}."
  end
end