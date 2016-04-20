class Person
attr_accessor :hair_color
attr_accessor :behaviors
attr_reader :name

  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
  end

  def behaviors
    puts "Sing me a song..."
  end
end

class Wyncoder
attr_accessor :code
attr_accessor :to_s
attr_accessor :inspect

  def code
    puts "I am coding!"
  end

  def to_s
    puts "A readable string."
  end

  def inspect
    p "The inspect string."
  end
end

#p Wyncoder.new
#puts Wyncoder.new
Wyncoder.new.to_s
Wyncoder.new.inspect


=begin

sandy = Person.new("Sandy","brunette")
dave = Person.new("Dave","bald")
p dave.name
p sandy.name


  def my_to_string
    puts "A readable string."
  end

  def my_inspect
    puts "The inspect string."
  end
=end
