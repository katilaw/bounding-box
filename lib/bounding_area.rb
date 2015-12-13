# require 'pry'
class BoundingArea
  attr_reader :incoming
  def initialize(incoming)
    @incoming = incoming
  end

  def boxes_contain_point?(coming_x,coming_y)
    count = 0
    unless incoming.empty?
      @incoming.each do |box|
        count += 1 if (coming_x >= box.xcord && coming_x <= box.xcord + box.width) && (coming_y >= box.ycord && coming_y <= box.ycord + box.height)
      end
    end
    count == 1
  end
end
