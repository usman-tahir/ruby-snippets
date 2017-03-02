require 'gosu'

class GameWindow < Gosu::Window
  def initialize
    super(250, 250)
    self.caption = 'Gosu Window Example'
    @background_image = Gosu::Image.new('./img/bricks.png')
  end

  def update
  end

  def draw
    @background_image.draw(0, 0, 0)
  end
end

window = GameWindow.new
window.show
