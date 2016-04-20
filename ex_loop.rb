row1 = ["Don", "Paul", "Carlos", "Jasmine", "David"]
for student in row1
puts "Row one student in seat #{row1.index(student)+1} is #{student}"
end


row1 = ["Don", "Paul", "Carlos", "Jasmine", "David"]
i = 1
for student in row1
puts "Row one student in seat #{i} is #{student}."
end

#RETURN THE HIGHEST NUMBER FROM THE ARRAY.
#[2, 5, -3, 9, 6, 2]
numbers = [2, 5, -3, 9, 6, 2]
max_num = numbers[0]
i=0
while i < numbers.length
  if numbers[i] > max_num
    max_num = numbers[i]
  end
  i += 1
end
puts max_num

#OR USE THE "FOR" METHOD
numbers = [2, 5, -3, 9, 6, 2]
max_num = numbers[0]
for number in numbers
  if number > max_num
    max_num = number
  end
end
puts max_num
