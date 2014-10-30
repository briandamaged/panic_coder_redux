
require_relative 'entity'

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

