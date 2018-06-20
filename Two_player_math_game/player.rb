# Player definition: life, health, take damage

class Players
  attr_accessor :current_health, :name, :max_health

  def initialize(name)
    @name = name
    @current_health = 3
    @max_health = 3
  end

  def take_damage
    puts "#{@name} loses a life."
    @current_health -= 1
  end

  def lost?
    @current_health == 0
  end

  def summary
    "#{@name}: #{@current_health}/#{@max_health} life"
  end
end
