require 'frame'

RSpec.describe Frame do
  describe '#total' do
    it 'returns the first value of a roll of a frame' do
      frame = Frame.new(2, 6)

      expect(frame.first_roll).to eq(2) 
    end

    it 'returns the second value of a roll of a frame' do
      frame = Frame.new(2, 6)

      expect(frame.second_roll).to eq(6) 
    end
  end
end