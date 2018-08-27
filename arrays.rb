# Part I - Print a single item from the following arrays:

# Use the following array of Kardashians for exercises 1 - 5
kardashians = ['Kim', 'Robert', 'Khloé', 'Rob', 'Kourtney']

# 1) Find two ways to access and print the 'Kim' value.
puts kardashians[0]
puts kardashians[-5]
kardashians.at(0)

# 2) Find two ways to remove the male names from the Kardashians.

# Method 1:
kardashians.delete_at(1)
kardashians.delete_at(2)
puts kardashians
#Method 2:
kardashians.delete('Rob')
kardashians.delete('Robert')
puts kardashians

# 3) Remove one Kardashian, print the names and then add them back to the Array:
removed_kardashian = kardashians.shift
puts kardashians
kardashians.push(removed_kardashian)
puts kardashians


# 4) Take the last Kardashian and make them the first, print the result.
last_kardasian = kardashians.pop
kardashians.insert(0, last_kardasian)
puts kardashians

# 5) Find a way to count the Kardashians in the array that begin with the letter 'K'
count = 0
kardashians.each do |kardashian|
  if kardashians.first
    count += 1
  end
end
puts "There are #{count} Kardashians with names beginning with K."