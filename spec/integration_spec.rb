require 'bowling_Game'
require 'frame'

RSpec.describe BowlingGame do
  it 'calculates a score if no spares or strikes were obtained' do
    bowling_game = BowlingGame.new

    10.times do
      bowling_game.add_frame(Frame.new(5, 2))
    end

    expect(bowling_game.total_score).to eq(70)
  end

  it 'outputs the score of a perfect game as 300' do
    bowling_game = BowlingGame.new
    
    12.times do 
      bowling_game.add_frame(Frame.new(10, 0))
    end

    expect(bowling_game.total_score).to eq(300)
  end

  it 'outputs the score of a game where no pins were hit' do
    bowling_game = BowlingGame.new

    10.times do
      bowling_game.add_frame(Frame.new(0, 0))
    end

    expect(bowling_game.total_score).to eq(0)
  end
end