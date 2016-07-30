class TodoList

  def initialize(arr)
    @items = arr
  end

  def get_items
    p @items
  end

  def add_item(new_item)
    @items << (new_item)
  end

  def delete_item(item_to_remove)
    @items.delete(item_to_remove)
  end

  def get_item(index)
    @items[index]
  end

end