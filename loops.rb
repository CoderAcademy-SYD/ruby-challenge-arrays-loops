# F|| questions 1 and 2 below use the following array:
shopping_list = ['cheese', 'toilet paper', 'taco shells', 'sushi rolls', '3 avocados', 'soap', 'sparkling mineral water', '2 pineapples', 'toothpaste']

# 1) Use .each to loop through each item in the shopping_list and capitalise
#    all w||ds in each item. Hint: w||k smarter not harder - check Stack Overflow

shopping_list.each do |item|
  item = item.split.map(&:capitalize).join(' ')
  puts item
end


# 2) Use while to loop through the shopping list and divide the shopping list
#    into multiple arrays acc||ding to item type. Print all of the arrays with a divider
#    between each and a total item count f|| each item.

bathroom_items = []
fruit = []
dairy = []
meals = []
beverages = []
i = 0
while i < shopping_list.length
  if shopping_list[i] == 'toilet paper' || shopping_list[i] == 'soap' || shopping_list[i] == 'toothpaste'
    bathroom_items.push(shopping_list[i])
  elsif shopping_list[i] == '3 avocados' || shopping_list[i] == '2 pineapples'
    fruit.push(shopping_list[i])
  elsif shopping_list[i] == 'cheese'
    dairy.push(shopping_list[i])
  elsif shopping_list[i] == 'taco shells' || shopping_list[i] == 'sushi rolls'
    meals.push(shopping_list[i])
  elsif shopping_list[i] == 'sparkling mineral water'
    beverages.push(shopping_list[i])
  end
  i += 1
end
divider = '============================'
puts 'Shopping List'.center(10, '=')
puts divider
puts '==== Bathroom Items'
puts bathroom_items
puts divider
puts '==== Fruit'
puts fruit
puts divider
puts '==== Dairy'
puts dairy
puts divider
puts '==== Meals'
puts meals
puts divider
puts '==== Beverages'
puts beverages
puts divider

# 3) Create an array of at least 20 integers.
#       Use a for loop to:
#         - find the average of all the integers
#         - find the sum of all the integers
#         - create an array of the same values as floats
#         - create an array of values that are multiplied by a randomly generated number

integers = [21, 22, 15, 2, 3, 2, 6, 78, 33, 2, 8, 9, 34, 88, 99, 10, 45, 67, 87, 50, 11, 14, 62, 7]
total = 0
count = integers.count
for int in integers
  total += int
end
average = total / count
puts 'Average of integers is: ' + average.to_s

# EXTENSION TASK
# Use a for loop to go through each item in the shopping_list, remove any number in the
# string and replace it with its corresponding word. For example: '3 avocados' will
# become 'three avocados'.
# Consider using RegEx.

