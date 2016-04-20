=begin
class Person
  attr_accessor :name, :hair_color
    @@everyone = []

  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
  end
  def sing
    puts " #{@name} is singing "
  end
  def save_method
    @@everyone << [@name, @hair_color]
    p @@everyone
  end
end

person1 = Person.new("Paul", "Brunette")
person1.save_method



class Person
  attr_accessor :name, :hair_color
  @@everyone = []

  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
    @@everyone << name
  end

  def sing
    puts "#{@name} is singing "
  end

  def save_method
    @@everyone << [@name, @hair_color]
    p @@everyone
  end

  def self.riot
    puts "The people are rising up!"
    @@everyone.each do |eachperson|
    puts "#{eachperson} is rioting!"
    end
  end
end
person1 = Person.new("Sandy", "Brunette")
person2 = Person.new("Joe", "Brunette")
person3 = Person.new("Tim", "Brunette")

Person.riot
=end

class Person
  attr_accessor :name, :hair_color
  @@everyone = []

  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
    @@everyone << self
  end

  def sing
    puts "#{@name} is singing "
  end

  def self.riot
    puts "The people are rising up!"
  end
end

person1 = Person.new("Paul", "Brunette")
Person.riot
