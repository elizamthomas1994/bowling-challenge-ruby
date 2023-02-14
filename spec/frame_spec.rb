require 'frame'

RSpec.describe Frame do
  describe '#first_roll' do
    it 'returns the first value of a roll of a frame' do
      frame = Frame.new(2, 6)

      expect(frame.first_roll).to eq(2) 
    end
  end
   
  describe '#second_roll' do
    it 'returns the second value of a roll of a frame' do
      frame = Frame.new(2, 6)

      expect(frame.second_roll).to eq(6) 
    end
  end

  describe '#total' do
    it 'adds both values of a roll of a frame together' do
      frame = Frame.new(2, 6)

      expect(frame.total).to eq(8) 
    end
  end
end