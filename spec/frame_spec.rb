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

  describe '#strike?' do
    it 'returns true if the first roll value is ten' do
      frame = Frame.new(10, 0)

      expect(frame.strike?).to eq(true)
    end

    it 'returns false if the first roll value is less than ten' do
      frame = Frame.new(2, 6)

      expect(frame.strike?).to eq(false)
    end
  end

  describe '#spare?' do
    it 'returns true if the total of both rolls is ten' do
      frame = Frame.new(5, 5)

      expect(frame.spare?).to eq(true)
    end

    it 'returns false if the total of both rolls is less than ten' do
      frame = Frame.new(5, 3)

      expect(frame.spare?).to eq(false)
    end
  end
end