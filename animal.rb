require_relative 'remover.rb'
class Animal
  attr_reader :name
attr_writer :name
attr_accessor :name


  def initialize(type, number_of_legs, name = "Unknown")
    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
    @type = type
  end

  def remove_leg
    remover = Remover.new()
    @number_of_legs = remover.decrease(@number_of_legs)
  end

  def speak
    puts "Bla bla bla"
  end
    def id
    @id
  end

  def type
    @type
  end

  def number_of_legs
    @number_of_legs
  end

  def name
    @name
  end

  def name=(value)
    @name = value
  end
end

animal_1 = Animal.new(4,4, "Rex")
animal_2 = Animal.new(8,3)

animal_1.speak
puts animal_2.id;

