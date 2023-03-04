# 1. Write a program that prints a greeting message. This program should contain a
# method called greeting that takes a name as its parameter and returns a
# string.
def greeting(name)
  "Hello, #{name}"
end

puts greeting("Alex")

# 2. What do the following expressions evaluate to? That is, what value does
# each expression return?
x = 2 # => 2
puts x = 2 # => nil
p name = "Joe" # => "Joe"
four = "four" # => "four"
print something = "nothing" # => nil

# 3. Write a program that includes a method called multiply that takes two
# arguments and returns the product of the two numbers.
def multiply(a, b)
  a * b
end

multiply(2, 3)

# 4. What will the following code print to the screen?
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# Nothing, because it returns before `puts words`.

# 5. 1) Edit the method definition in exercise #4 so that it does print words
# on the screen.
def scream(words)
  words = words + "!!!!"
  puts words
end

# 2) What does it return now?
scream("Yippeee")

# It returns `nil`.

# 6. What does the following error message tell you?
# ArgumentError: wrong number of arguments (1 for 2)
#   from (irb):1:in `calculate_product'
#   from (irb):4
#   from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

# That the method `calculate_product` was called with only one argument when it
# expects two.
