# 1. Write a program that checks if the sequence of characters "lab" exists in
# the following strings. If it does exist, print out the word.

strings = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

def print_if_lab(string)
  puts string if string.match? /lab/
end

strings.each { |string| print_if_lab(string) }

# 2. What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# It prints nothing. It returns something like `#<Proc:0x000055f5e1f7d118>`.

# 3. What is exception handling and what problem does it solve?

# It allows you to decide what should happen if an error occurs, rather than
# the program just exiting.

# 4. Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# 5. Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Give us the following error when we run it?

# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

# Because without the ampersand Ruby assumes `block` is a regular argument
# rather than a block, and `execute` isn't being called with an argument.
