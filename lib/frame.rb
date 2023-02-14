class Frame
  def initialize(roll1, roll2)
    @roll1 = roll1
    @roll2 = roll2
  end

  def first_roll
    return @roll1
  end

  def second_roll
    return @roll2
  end

  def total
    return @roll1 + @roll2
  end

  def strike?
    if @roll1 === 10
      return true
    else 
      return false
    end
  end

  def spare?
    if @roll1 + @roll2 == 10
      return true
    else
      return false
    end
  end
end