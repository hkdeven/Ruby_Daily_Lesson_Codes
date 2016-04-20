
# Ask user for bill amount
puts "How much is the bill?"
bill_before_tip = gets.chomp.to_f
puts "-"*50

def bill(bill_before_tip)
  until bill_before_tip <= 0
    puts "Sorry, I need a number greater than zero."
    puts "How much is the bill?"
    bill_before_tip = gets.chomp.to_f
    puts "-"*50
  end
end

puts "What percent would you like to tip?"
user_tip = gets.chomp.to_f
puts "-"*50

bill_total = (bill_before_tip * (user_tip * 0.01)) + bill_before_tip
puts "The total is $#{'%.2f' %bill_total.to_s}."
puts "-"*50

puts "How many ways would you like to split your bill?"
number_of_splits = gets.chomp.to_f
puts "-"*50

split_bill = bill_total / number_of_splits
puts "Each person owes $#{'%.2f' %split_bill.to_s}"
puts "-"*50
