class TodoList

  def initialize(list)
    @list = list
  end

  def get_items
    @list
  end

  def add_item(addition)
    @list << addition
  end

  def delete_item(subtraction)
    @list.delete(subtraction)
  end

  def get_item(index)
    @list[index]
  end

end

list = TodoList.new(["do the dishes", "mow the lawn"])
# p list.add_item("mop")

# list.delete_item("do the dishes")

# list.get_item(0)