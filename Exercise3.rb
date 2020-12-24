# Create a file named Exercise3.rb.

# Don't forget to try running your code after each step, and to commit frequently as you work!

# 1. Start out by creating the following hash representing the number of students in a cohorts:

# students = {
#   :cohort1 => 34,
#   :cohort2 => 42,
#   :cohort3 => 22
# }

students = {
   :cohort1 => 34,
   :cohort2 => 42,
   :cohort3 => 22
}

# Create a method that displays the name and number of students for each cohort, like so:

    # define a method with the cohort list as an argument

def cohort_size(list)

    # loop through each cohort and print "There are num students in cohortx"

    list.each do |name, size|
        puts "There are #{size} students in #{name}"
    end
end

# cohort_size(students)

# Add cohort 4, which had 43 students, to the hash.

students[:cohort4] = 43

# cohort_size(students)

# Use the keys method to output all of the cohort names.

puts students.keys

# The classrooms have been expanded! Increase each cohort size by 5% and display the new results.

students.each do |name, size|
    students[name] = (size * 1.05).to_i
end

# cohort_size(students)

# Delete the 2nd cohort and redisplay the hash.

students.delete(:cohort2)

cohort_size(students)

# BONUS: Calculate the total number of students across all cohorts using each and a variable to keep track of the total. Output the result.

sum = 0

students.each do |name, size|
    sum += students[name]
end

puts "The total number of students across all cohorts is #{sum}"

# BONUS: Create another similar hash called staff and display it using the same method.

# After you're done, be sure you have committed and pushed everything to your Github repo.