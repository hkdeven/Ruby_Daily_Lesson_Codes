class Animal
  def initialize(animalname)
    @name = animalname
  end

  def jumped_over (firstthingjumpedover, secondthingjumpedover)
    puts "#{@name} jumped over the #{firstthingjumpedover} and the #{secondthingjumpedover}."
  end
end
quick_fox = Animal.new("The quick fox")
lazy_dog = "lazy dog"
daisy_log = "daisy log"

quick_fox.jumped_over(lazy_dog, daisy_log)
