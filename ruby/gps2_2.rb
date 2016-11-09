# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:create an empty hash
  # add a create list method(food_str)
  # .split it
  # set default to 1 test 0 too
  #loop through list
  # print the list to the console [can you use one of your other methods here?] print hash
# output: [hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: add item food_str, and qty_num
# output: updated hash

# Method to remove an item from the list
# input: food_str
# steps: delete food_str
# output: updated hash

# Method to update the quantity of an item
# input: food_str qty_num
# steps: override qty
# output:updated hash

# Method to print a list and make it look pretty
# input: hash
# steps: loop make pretty
# output: updated hash



def create_list(list_str)
  food_list = {}
  list_array=list_str.split(" ")
  default_qty = 1
  list_array.each do |food|
  food_list[food.to_sym] = default_qty
  end
  food_list
end




# drive code
food_list = create_list("")

#p food_list

def add_item(food_list, new_food, qty_num = 1)
  food_list[new_food.to_sym] = qty_num
  food_list
end

def remove_item(food_list, food_remove)
  food_list.delete(food_remove.to_sym)
  food_list
end

def update_item(food_list, food, qty_num)
  food_list[food.to_sym] = qty_num
  food_list
end

def pretty_list(food_list)
  food_list.each do |food, qty|
    puts "#{food}: #{qty}"
  end
end

add_item(food_list, "lemonade", 2)
add_item(food_list, "tomatoes", 3)
add_item(food_list, "onions", 1)
add_item(food_list, "ice cream", 4)
remove_item(food_list, "lemonade")
update_item(food_list, "ice cream", 1)
pretty_list(food_list)

# What did you learn about pseudocode from working on this challenge?
# Pseudocoding compared to my initial impressions of it is much simpler than I originally though. It uses for the most part plain English, rather than any terms which are ruby executable, so a layman can look at it and see what the code is going to do.

# What are the tradeoffs of using arrays and hashes for this challenge?
# While arrays are useful for obtaining intormation, they are not capable of representing values. For the grocery list, we already thought a hash would be more appropriate, as the key: value idea would make more sense. However, at the same time we also had to be sure to understand what methods are capable of being used for both types of data structures.

# What does a method return?
# A method returns the value of what has been processed through it, so in this case the result/return of each of our methods is the food list we had created.

# What kind of things can you pass into methods as arguments?
# Pretty much everything we used could be passed as arguments, as they make up the parts of the method, not the whole. Strings, integers, arrays, and hashes were all used as arguments within the methods, and all were applied and executed properly.

# How can you pass information between methods?
# To pass information between methods, a variable needs to be defined outside of the methods, or else it will be unusable after the method has been processed. In our case, we had to define the food list outside of the methods in order for it to be useable in the ones that follow afterwards.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# All of the concept we had leanred in week 5 appear to have been solidied with this challenge, and even the optional content about understanding what changes are preserved outside of methods depending on the type put in (data structure vs. variable). I believe for me the part I need to contnue to understand is how methods can be simplfied, and avoiding making things too complex to accomplish a simple task.
