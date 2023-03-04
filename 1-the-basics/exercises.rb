# The Basics

# 1. Add two strings together that, when concatenated, return your first and last
# name as your full name in one string.
"Alex " + "Mercea"

# 2. Use the modulo operator, division, or a combination of both to take a 4 digit
# number and find the digit in the: 1) thousands place 2) hundreds place 3) tens
# place 4) ones place
number = rand(1000..9999)
thousands = number / 1000
hundreds = number % 1000 / 100
tens = number % 1000 % 100 / 10
ones = number % 1000 % 100 % 10

# 3. Write a program that uses a hash to store a list of movie titles with the
# year they came out. Then use the puts command to make your program print out
# the year of each movie to the screen.
movies = { "Star Wars" => 1977,
           "War Games" => 1983,
           "Donnie Darko" => 2001 }

puts movies["Star Wars"]
puts movies["War Games"]
puts movies["Donnie Darko"]

# 4. Use the dates from the previous example and store them in an array. Then
# make your program output the same thing as exercise 3.
years = movies.values
years.each { |year| puts year }

# 5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
def factorial(n)
  return 1 if n == 1
  n * factorial(n - 1)
end

factorial(5)
factorial(6)
factorial(7)
factorial(8)

# 6. Write a program that calculates the squares of 3 float numbers of your
# choosing and outputs the result to the screen.
numbers = Array.new(3) { rand(1.0..100.0) }
numbers.each { |n| puts n**2 }

# 7. What does the following error message tell you?
# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
#   from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
#
# That somewhere there is a '{' without its corresponding '}'.
