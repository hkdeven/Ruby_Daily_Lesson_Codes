=begin
def add_balls_to_ball_pit_bag(bucket)
  ball_pit_bag = [red, green, yellow, etc]
  ball_pit_bag.concat(bucket)
end
###################################
#return an array
from 1-19
with fizz in the place of # div by 3
buzz divisible by 5
fizz buzz by 5 and 3
=end

def fizzbuzz
  container = []
  (1..100).each do |a_number|
    if a_number %15 == 0
      container << "fizzbuzz"
    elsif a_number % 3 == 0
      container << "fizz"
    elsif a_number % 5 ==0
      container << "buzz"
    else
      container << a_number
    end
  end
  container
end
puts fizzbuzz
