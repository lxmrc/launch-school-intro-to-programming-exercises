# 1. Given a hash of family members, with keys as the title and an array of
# names as the values, use Ruby's built-in select method to gather only
# siblings' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

siblings = []

family.select do |relationship, members|
  siblings.concat(members) if %i[sisters brothers].include? relationship
end

family.values_at(:sisters, :brothers).flatten

# 2. Look at Ruby's merge method. Notice that it has two versions. What is the
# difference between merge and merge!? Write a program that uses both and
# illustrate the differences.

# `merge` creates a new hash while `merge!` modifies the original hash.

hash_1 = { a: 1 }
hash_2 = { b: 2 }

hash_1.merge(hash_2)
hash_1 # => { a: 1 }

hash_1.merge!(hash_2)
hash_1 # => { a: 1, b: 2 }

# 3. Using some of Ruby's built-in Hash methods, write a program that loops
# through a hash and prints all of the keys. Then write a program that does the
# same thing except printing the values. Finally, write a program that prints
# both.

family.keys.each { |key| puts key }
family.values.each { |value| puts value.to_s }
family.each do |key, value|
  puts "Key: :#{key}, value: #{value}"
end

# 4. Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

person[:name]

# 5. What method could you use to find out if a Hash contains a specific value
# in it? Write a program that verifies that the value is within the hash.

def value_in_hash?(value, hash)
  hash.values.include? value
end

value_in_hash?("builder", person)

# 6. Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# What's the difference between the two hashes that were created?

# One has the key `:x` which is a symbol, the other has the key `"hi there"` which is a string.

# 7. If you see this error, what do you suspect is the most likely problem?

# NoMethodError: undefined method `keys' for Array

# A. We're missing keys in an array variable.
# B. There is no method called keys for Array objects.
# C. keys is an Array object, but it hasn't been defined yet.
# D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.

# B
