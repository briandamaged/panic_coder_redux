
require_relative 'lib/library'

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

