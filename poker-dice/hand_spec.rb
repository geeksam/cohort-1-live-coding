require_relative 'hand'
require_relative 'loaded_die'

describe Hand do
  it "has five dice, each of which has a known face value" do
    dice = 5.times.map { LoadedDie.new('Q') }
    hand = Hand.new( dice )
    expect( hand.face_values ).to eq( %w[ Q Q Q Q Q ] )
  end
end

