# This exercise is more advanced, and should only be tackled if you are comfortable with .each.

# Let's learn more about arrays! We've been iterating over arrays using my_array.each. This is okay, but sometimes there are more specific ways to iterate.

# Take a look at select. It allows you to filter down an array by some condition.

# Refactor the get_absent_dogs method from Exercise 4 to use the select method instead of each.

my_dogs = [
  { :name => 'Ralph', :position => 5 },
  { :name => 'Cindy', :position => 8 },
  { :name => 'Jade', :position => 11 },
]


# def get_absent_dogs(dogs_array)
#     absent_dogs = dogs_array.select do |dog|
#         dog[:position] > 10
#     end
#     return absent_dogs
# end

# p get_absent_dogs(my_dogs)


# Now let's look at map (the same as collect). Given an array, it will return a new array with the same number of items, where each item has had some kind of operation performed on it. Example:

# numbers = [1, 2, 3, 4, 5]
# new_numbers = numbers.map do |num|
#   num * 2
# end
# puts new_numbers # [2, 4, 6, 8, 10]


# Your dogs all see a squirrel and chase it. Increase their position values by 5 using Array.map!.
# my_dogs.map! do |dog|
#     dog[:position] += 5
#     dog
# end

# puts my_dogs
# Note that .map! will modify the array you are using (presumably my_dogs) rather than returning a new one with .map.
# Now create a method called chase_squirrel that handles this. It should take an array of dogs as an argument and add 5 to the position of each dog.
def chase_squirrel(dogs_array)
    dogs_array.map! do |dog|
        dog[:position] += 5
        p dog
    end
end

chase_squirrel(my_dogs)

# Write a new method called return_dogs that takes an array of dogs as an argument. It should reset all of the dogs' positions back to 0.

def return_dogs(dogs_array)
    dogs_array.map! do |dog|
        dog[:position] = 0
        p dog
    end
end

return_dogs(my_dogs)