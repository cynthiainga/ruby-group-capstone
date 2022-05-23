require_relative './item'

class Author 
  attr_accessor :first_name, :last_name
  attr_reader :items
  @@id = 0
  
  def initialize(first_name: 0, last_name: 0)
    @id = @@id
    @@id += 1
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item: 0)
    return p 'Please add an item of class Item' if item.instance_of?(Item) == false
    @items.push(item)
  end

end