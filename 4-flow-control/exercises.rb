# 1. Write down whether the following expressions return true or false. Then
# type the expressions into irb to see the results.

(32 * 4) >= 129 # false
false != !true # false
true == 4 # false
false == (847 == '847') # true
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false # true

# 2. Write a method that takes a string as an argument. The method should
# return a new, all-caps version of the string, only if the string is longer
# than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint:
# Ruby's String class has a few methods that would be helpful. Check the Ruby
# Docs!)

def all_caps_if_longer_than_10(string)
  string.length > 10 ? string.upcase : string
end

# 3. Write a program that takes a number from the user between 0 and 100 and
# reports back whether the number is between 0 and 50, 51 and 100, or above
# 100.

def number_comparer
  puts "Enter a number between 0 and 100:"
  number = gets.chomp.to_i

  if number.negative?
    puts "You cannot enter a negative number." 
  elsif number.between?(0, 50)
    puts "#{number} is between 0 and 50."
  elsif number.between?(51, 100)
    puts "#{number} is between 51 and 100."
  else
    puts "#{number} is above 100."
  end
end


# 4. What will each block of code below print to the screen? Write your answer
# on a piece of paper or in a text editor and then run each block of code to
# see if you were correct.

# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE") # => FALSE

# Snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end
# => "Did you get it right?"

# Snippet 3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end
# => "Alright now!"

# When you run the following code...

# def equal_to_four(x)
#   if x == 4
#     puts "yup"
#   else
#     puts "nope"
# end
# 
# equal_to_four(5)

# You get the following error message...
# exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end
# Why do you get this error and how can you fix it?

# There is a missing `end`. The correct code is:

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

# 6. Write down whether the following expressions return true or false or raise an error. Then, type the expressions into irb to see the results.

(32 * 4) >= "129" # error
847 == '847' # => false
'847' < '846' # => false
'847' > '846' # => true
'847' > '8478' # => false
'847' < '8478' # => true
