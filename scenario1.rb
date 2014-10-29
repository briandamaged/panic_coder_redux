
class Robot
  attr_accessor :x, :y

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

robot.state_coordinates
robot.navigate_to(7, 7)
robot.state_coordinates
