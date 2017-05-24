#Method to create a list
  #input: string with spaces
  #define method to accept an argument, turn string into an array.
  #output: array of items

#Method to add an item to a list
  #input: string
  #method accepts string and adds to array of items
  #output: array with new item added

#Method to add a quantity
  #input: integer
  #create a new array with quantities of items
  #output: array with quantities

#Zip together two arrays to create a hash of grocery items and quantities

#Method to remove an item
  #input: string
  #define method to accept an argument.  Remove the entered word from the hash
  #output: hash with updated removed items

#Method to update a quantity
  #input: string and integer
  #define method to accept an argument of a string and integer.  old string and integer value will be replaced with new string and integer value that are entered in the method.
  #output: updated hash with updated quantity (integer) value




def groceries(items)
  grocery_arr = items.split(' ')
end
def qty_list(quantities)
  qty_arr = quantities.split(' ')
end
def create_list(x,y)
  Hash[groceries(x).zip(qty_list(y))]
end
grocery_hash =  create_list("apples kiwis bananas","2 4 6")
  p grocery_hash
def add_grocery(x,y)
  Hash[groceries(x).zip(qty_list(y))]
end
new_item_hash = add_grocery("pears","2")
newest_groceries = grocery_hash.merge(new_item_hash)
p newest_groceries
def remove_item(newest_groceries,item)
 newest_groceries.delete(item)
end
remove_item(newest_groceries,'apples')
p newest_groceries
def change_qty(newest_groceries,keyword,value)
  newest_groceries[keyword] = value
end
change_qty(newest_groceries,'pears',4)
p newest_groceries
def mk_pretty(newest_groceries)
  newest_groceries.each do |type,qty|
  puts "there are #{qty} #{type}"
  end
end
p mk_pretty(newest_groceries)
