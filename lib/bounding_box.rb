class BoundingBox
  attr_reader :xcord, :ycord, :width, :height
  def initialize(xcord,ycord,width,height)
    @xcord = xcord
    @ycord = ycord
    @width = width
    @height = height
  end

  def left
    xcord
  end

  def right
    xcord + width
  end

  def bottom
    ycord
  end

  def top
    ycord + height
  end

  def contains_point?(coming_x,coming_y)
    coming_x >= xcord && coming_x <= xcord + width && coming_y >= ycord && coming_y <= ycord + height
  end

end
