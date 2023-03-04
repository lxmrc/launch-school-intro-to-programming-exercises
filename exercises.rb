# 1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9,
# 10], and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |value| puts value }

# 2. Same as above, but only print out values greater than 5.

arr.each { |value| puts value if value > 5 }

# 3. Now, using the same array from #2, use the select method to extract all
# odd numbers into a new array.

odd_numbers = arr.select(&:odd?)

# 4. Append 11 to the end of the original array. Prepend 0 to the beginning.

arr.push(11)
arr.unshift(0)

# or

arr.append(11)
arr.prepend(0)

# 5. Get rid of 11. And append a 3.

arr.delete(11)
arr.push(3)

# 6. Get rid of duplicates without specifically removing any one value.

arr.uniq!

# 7. What's the major difference between an Array and a Hash?

# Arrays are ordered lists of data. Hashes are unordered key-value pairs.
# Array elements are accessed with a numerical index, hash elements are accessed
# with a key, which can either be a string or a symbol.

# 8. Create a Hash, with one key-value pair, using both Ruby syntax styles.

hash_1 = { a: 1 }
hash_2 = { :a => 1 }

# 9. Suppose you have a hash 
h = { a: 1, b: 2, c: 3, d: 4 }

# Get the value of key `:b`.
h[:b]

# Add to this hash the key:value pair `{e:5}`
h[:e] = 5

# Remove all key:value pairs whose value is less than 3.5
h.reject! { |_key, value| value < 3.5 }

# 10. Can hash values be arrays? Can you have an array of hashes? (give examples)

# Yes and yes.

hash_with_arrays = { a: [1, 2, 3], b: [4, 5, 6] }
array_of_hashes = [{ a: 1 }, { b: 2 }]

# 11. Given the following data structures, write a program that copies the
# information from the array into the empty hash that applies to the correct
# person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = { "Joe Smith" => {}, "Sally Johnson" => {} }

contacts.keys.each_with_index do |name, i|
  email, address, phone = contact_data[i]
  contacts[name] = { email: email, address: address, phone: phone }
end

# 12. Using the hash you created from the previous exercise, demonstrate how
# you would access Joe's email and Sally's phone number.

contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]

# 13. Use Ruby's Array method delete_if and String method start_with? to delete
# all of the strings that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |string| string.start_with? "s" }

# Then recreate the arr and get rid of all of the strings that start with "s"
# or start with "w".

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |string| string.start_with? "s", "w"  }

# 14. Take the following array:

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

# and turn it into a new array that consists of strings containing one word.
# (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using
# Array's map and flatten methods, as well as String's split method.

a.flat_map { |string| string.split(" ") }

# 15. What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# "These hashes are the same!"

# 16. Challenge: In exercise 11, we manually set the contacts hash values one
# by one. Now, programmatically loop or iterate over the contacts hash from
# exercise 11, and populate the associated data from the contact_data array.
# Hint: you will probably need to iterate over ([:email, :address, :phone]),
# and some helpful methods might be the Array shift and first methods.

# Note that this exercise is only concerned with dealing with 1 entry in the
# contacts hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

# As a bonus, see if you can figure out how to make it work with multiple
# entries in the contacts hash.

# I think I already did something like this.
