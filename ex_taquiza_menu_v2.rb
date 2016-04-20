class MenuItem
  attr_reader :name
  attr_reader :price
  attr_reader :description

  def initialize(name, price, description)
    @name = name
    @price = price
    @description = description
  end
end

class Category
  attr_reader :name
  attr_reader :items

  def initialize(name, items)
    @name = name
    @items = items
  end
end

class Menu
  attr_accessor :categories

  def initialize
    @categories = []
  end
end

taquiza_menu = Menu.new
taco = MenuItem.new("Al Pastor Tacos", 5, "Delicious pork tacos")
taco2 = MenuItem.new("Hongos Tacos", 8, "Delicious veggie tacos")
antojitos = Category.new("Antojitos", [taco, taco2])
taquiza_menu.categories << antojitos

taquiza_menu.categories.each do |cat|
  puts "#{cat.name}"
  puts "+" * 40
  cat.items.each do |item|
    puts "#{item.name} ($#{item.price})"
  end
end
