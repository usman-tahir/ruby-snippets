require 'gosu'

class Player
  def initialize
    @image = Gosu::Image.new('./char/char_one.png')
    @x = @y = @velocity_x = @velocity_y = @angle = 0.0
  end

  def warp(x, y)
    @x, @y = x, y
  end

  def turn_left
    @angle -= 4.5
  end

  def turn_right
    @angle += 4.5
  end

  def accelerate
    @velocity_x += Gosu::offset_x(@angle, 0.5)
    @velocity_y += Gosu::offset_y(@angle, 0.5)
  end

  def move
    @x += @velocity_x
    @y += @velocity_y
    @x %= 250
    @y %= 250

    @velocity_x *= 0.95
    @velocity_y *= 0.95
  end

  def draw
    @image.draw_rot(@x, @y, 1, @angle)
  end
end
