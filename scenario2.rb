
class Entity
  attr_accessor :x, :y
end

class Shovel < Entity
  def dig
    puts "SCOOP"
  end
end

class Map < Entity
end


class Robot < Entity

  def state_coordinates()
    puts "I AM AT [#{ self.x }, #{ self.y }]"
  end

  def navigate_to(x_input, y_input)
    while self.x < x_input
      puts "RIGHT"
      self.x += 1
    end

    while self.x > x_input
      puts "LEFT"
      self.x -= 1
    end

    while self.y < y_input
      puts "UP"
      self.y += 1
    end

    while self.y > y_input
      puts "DOWN"
      y -= 1
    end
  end

end


robot = Robot.new()
robot.x = 3
robot.y = 4

map   = Map.new
map.x = 8
map.y = 4

shovel = Shovel.new
shovel.x = 5
shovel.y = 6

robot.state_coordinates                # prints: I AM AT [3, 4]
robot.navigate_to(map.x, map.y)  # prints: RIGHT RIGHT UP UP
robot.state_coordinates                # prints: I AM AT [3, 4]
robot.navigate_to(shovel.x, shovel.y)  # prints: RIGHT RIGHT UP UP
robot.state_coordinates                # prints: I AM AT [5, 6]

shovel.dig                             # prints: SCOOP

