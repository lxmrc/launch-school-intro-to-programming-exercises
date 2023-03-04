# 1. What does the `each` method in the following program return after it is
# finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# => [1, 2, 3, 4, 5]

# 2. Write a while loop that takes input from the user, performs an action, and
# only stops when the user types "STOP". Each loop can get info from the user.

loop do
  puts "I'm going to keep doing this until you type 'STOP'."
  break if gets.chomp == "STOP"
end

# 3. Write a method that counts down to zero using recursion.

def countdown(number)
  if number <= 0
    puts number
  else
    puts number
    countdown(number - 1)
  end
end

countdown(10)
