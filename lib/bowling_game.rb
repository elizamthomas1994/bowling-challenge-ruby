class BowlingGame
  def initialize
    @frames = []
  end

  def add_frame(frame)
    @frames << frame
  end

  def total_score
    score = 0
    frame_number = 0
    frame = @frames[frame_number]

    10.times do
      if frame.strike?
        score += 10 + strike_bonus(frame_number)
        frame_number += 1
      elsif frame.spare?
        score += 10 + spare_bonus(frame_number)
        frame_number += 1
      else 
        score += frame.total
        frame_number += 1
      end
    end

    return score
  end

  private

  def strike_bonus(frame_number)
    @frames[frame_number + 1].total + @frames[frame_number + 2].first_roll
  end

  def spare_bonus(frame_number)
    @frames[frame_number + 1].first_roll
  end
end
