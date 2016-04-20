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
=begin
print Car.ancestors
puts Car.superclass

print Motorcycle.ancestors
puts Motorcycle.superclass

car = Car.new
puts car.engine

motorcycle = Motorcycle.new
puts motorcycle.engine
=end
module Talkative
  def speak
      puts "Hello world!"
  end
end

class Kitt < Car
    include Talkative
end

=begin
print Kitt.ancestors
puts Kitt.superclass

kitt = Kitt.new
kitt.speak


#This is a class method example
class Table
  @@next_table_id = 1
  attr_reader :id
  attr_accessor :num_legs

  def self.has_legs?
    true
  end

  def self.preview_next_id
    @@next_table_id
  end

  def preview_next_id
    @@next_table_id
  end

  def change_next_id(next_id)
    @@next_table_id = next_id
  end

  def initialize(num_legs)
    @tabletop = []
    @num_legs = num_legs
    @id = @@next_table_id
    @@next_table_id += 1
  end

  def put_on(something)
    @tabletop << something
  end

  def look_at
    @tabletop
  end

	def a_public_method
		a_private_method
	end

	private

	def a_private_method
	end
end

#p Table.next_table_id
#Table.@@next_table_id

#This is an instance of the class method
#t = Table.new

#p t.next_table_id


t = Table.new 1
p t.id
p t.preview_next_id

t2 = Table.new 2
p t2.id
p t2.preview_next_id

t2.change_next_id 100
p Table.preview_next_id

t.a_public_method
#t.a_private_method
t.send :a_private_method

class Parent
  protected
  def whisper_family_secret
    puts "shhh!"
  end
end

class Child < Parent
  def chat(other)
    other.whisper_family_secret
  end
end

class Stranger
  def chat(other)
    other.whisper_family_secret
  end
end

jo = Child.new
juha = Child.new

jo.chat(juha)
juha.chat(jo)
#both => shhh!

skeev = Stranger.new
skeev.chat(jo)


#new scenario below: overriding
###############################
class Parent
	def whoami; puts "I'm a parent"; end
end

class Child < Parent
	def whoami; puts "I'm a child"; end
end

p = Parent.new
p.whoami

c = Child.new
c.whoami

#new scenario below: super
###############################
class Parent
	def speak(arg); puts arg; end
end

class Child < Parent
	def speak; super "I'm a child"; end
end

p = Parent.new
p.speak("I'm a parent")

c = Child.new
c.speak
=end

####################
class Parent
	def speak1(arg); puts arg; end
end

class Child < Parent
	def speak2
		speak1 "I'm a child"
	end
end

p = Parent.new
p.speak1("I'm a parent")

c = Child.new
c.speak2
