# You want to add up your expenses for the year. Create an array of numbers (integers or floats) that represents your expenses, eg:

# [250, 7.95, 30.95, 16.50]

# Add up the numbers and output the result.

# Tip: you may need a variable to keep track of the sum total. What value should it start at?

# Put this code into a method. The method should take an array as an argument and return the sum of the expenses in the array. Call the method twice with different arrays.

# expenses = [99.99, 83.50, 12, 150, 360]

# sum = 0

# expenses.each do |expense|
#     puts sum += expense
# end

# puts "Your total expenses for the year are #{sum}"

expenses1 = [99.99, 83.50, 12, 150, 360]
expenses2 = [12, 24, 36, 48, 59]

def total(expenses)

sum = 0

    expenses.each do |expense|
        sum += expense
    end

    return sum
end

puts total(expenses1)
puts total(expenses2)

# puts expenses1.sum
