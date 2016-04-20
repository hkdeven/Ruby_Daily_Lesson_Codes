# Adds 2 to the number.
def add_two(number)
  if number.respond_to? :+
    if number.respond_to? :push
      number.push 2
    elsif number.class == String
      number + "2"
    #elsif number.include? ""
      #number.to_i + 2
    else
      number + 2
    end
  end
end
puts add_two(1) == 3
puts add_two(1.0) 333.0
puts add_two(nil) == nil
puts add_two({}) == nil
puts add_two([]) == [2]

def test
    puts add_two(1)
    puts add_two(1.0)
    puts add_two(nil)
    puts add_two({})
    puts add_two([])
    puts add_two("")
end

def find_ten
    i = 0
    loop do
        if i == 10
            return i
        end
        i += 1
    end
end

block = begin
    puts "Hello world!"
    0
end

puts block

def test(k)
  k + "AShjagsjhag"
end
test("king")

5.times do |number|
    puts "Hello #{number}"
end

[1,2,3,4,5].each do |num|
  if num.even?
    puts "Even"
  else
    puts "Odd"
  end
end

(1..5).each {|i| puts i }

result = (1..5).map do |num|
  if num.even?
    "Even"
  else
    "Odd"
  end
end

p result
