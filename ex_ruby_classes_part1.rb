=begin
#classes should start with uppercase letter
class Table
  attr_accessor :num_legs

  def self.has_legs?
    true
  end

  def initialize(num_legs)
    @tabletop = []
    @num_legs = num_legs
  end

  def put_on(something)
    @tabletop << something
  end

  def look_at
    @tabletop
  end
end

puts Table.class
print Table.methods
puts Table.hash

a_table = Table.new 4

#puts a_table.class
#print a_table.methods
#puts a_table.hash

a_table.put_on 1
p a_table.look_at

a_table.put_on 2
puts a_table.look_at

puts a_table.num_legs

a_table.num_legs = 99
puts a_table.num_legs

puts Table.has_legs?
=end

class Vehicle
  attr_accessor :engine
  attr_accessor :tires
end

class Car < Vehicle

end

class Motorcycle < Vehicle

end

print Car.ancestors
puts Car.superclass

print Motorcycle.ancestors
puts Motorcycle.superclass

car = Car.new
puts car.engine

motorcycle = Motorcycle.new
puts motorcycle.engine

module Talkative
  def speak
      puts "Hello world!"
  end
end

class Kitt < Car
    include Talkative
end

print Kitt.ancestors
puts Kitt.superclass

kitt = Kitt.new
kitt.speak
