require_relative 'hand'
require_relative 'loaded_die'

describe Hand do
  it "has five dice, each of which has a known face value" do
    dice = 5.times.map { LoadedDie.new('Q') }
    hand = Hand.new( dice )
    expect( hand.face_values ).to eq( %w[ Q Q Q Q Q ] )
  end

  specify "a Hand with five Queens is ranked as 'five of a kind'" do
    dice = 5.times.map { LoadedDie.new('Q') }
    hand = Hand.new( dice )
    expect( hand.rank ).to eq( 'Five of a kind' )
  end
end

