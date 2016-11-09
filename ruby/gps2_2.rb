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
