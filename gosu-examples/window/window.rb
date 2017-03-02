require 'gosu'

class GameWindow < Gosu::Window
  def initialize
    super(640, 480)
    self.caption = 'Gosu Window Example'
  end

  def update
  end

  def draw
  end
end

window = GameWindow.new
window.show
