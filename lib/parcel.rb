class Parcel

  def initialize(length, width, weight)
    @length = length.to_i()
    @width = width.to_i()
    @weight = weight.to_i()
  end

  def length
    @length
  end

  def width
    @width
  end

  def weight
    @weight
  end

  def volume
  @length * @width * @weight

  end

  def cost_to_ship
    if @length == @width && @weight<3
      return 35
    else
      return 5
    end
end
end
