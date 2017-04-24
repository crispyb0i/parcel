class Parcel
  def initialize(width, length, height, weight, speed)
    @width = width
    @length = length
    @height = height
    @weight = weight
    @speed = speed
  end

  def volume
    @width * @length * @height
  end

  def cost_to_ship
    cost = 0
    if volume > 50
      cost += 20
    else
      cost += 10
    end
    if @weight > 50
      cost += 20
    else
      cost += 10
    end
    if @speed == "same_day"
      cost += 10
    else
      cost += 0
    end
    cost
  end
end
