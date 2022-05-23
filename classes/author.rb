class Author 
  attr_accessor :first_name, :last:name
  attr_reader :items
  @@id = 0
  
  def initialize(first_name: 0, last_name: 0)
    @id = @@id
    @@id++
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item:0)
    @items.push(item)
  end

end