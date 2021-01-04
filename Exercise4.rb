# You have three dogs and you want to keep track of them. Sometimes they like to dig under your fence and explore the neighbourhood.

# Your backyard is 10 metres deep. You need to call their name if they leave your backyard (ie. if their position is greater than 10).

# Create an array of dogs as follows:

my_dogs = [
  { :name => 'Ralph', :position => 5 },
  { :name => 'Cindy', :position => 8 },
  { :name => 'Jade', :position => 11 },
]

# Notice that each 'dog' is actually a hash - a set of key value pairs. The two keys we need for each dog are :name and :position.

# Figure out which dogs have left the backyard. Write a method called get_absent_dogs that takes an array of dogs (hashes) as an argument and returns an array of dogs (that are absent).

# absent_dogs = my_dogs.select do |dog|
#     dog[:position] > 10
# end

# p absent_dogs
# puts absent_dogs
# puts absent_dogs.class

# def get_absent_dogs(dogs_array)
#   absent_dogs = dogs_array.select do |dog|
#     dog[:position] > 10
#   end
#   return absent_dogs
# end

# p get_absent_dogs(my_dogs)



# Call the dogs that are absent. Write a method called call_absent_dogs. It should take an array of dogs as an argument. It does not need to return anything, but should instead output the name of each dog that is missing. For example, for a dog named Izzy, "Come back, Izzy!".

def call_absent_dogs(dogs_array)
  dogs_array.each do |dog|
    if dog[:position] > 10
      puts "Come back, #{dog[:name]}!"
    end
  end
end

call_absent_dogs(my_dogs)

# How will this method know which dogs are absent?
# Your neighbour has also asked you to watch over her dogs. Make another array of dogs. Add another array of dogs similar to the previous one. Call the method call_absent_dogs with each set of dogs.
# This problem emphasises the need to break down problems into smaller parts. Always try to solve one problem at a time.

her_dogs = [
  { :name => "Bobby", :position => 8},
  { :name => "George", :position => 12},
  { :name => "Caroline", :position => 15},
  { :name => "Sam", :position => 2},
]

call_absent_dogs(her_dogs)