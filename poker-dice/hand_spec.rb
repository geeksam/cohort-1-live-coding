require_relative 'hand'
require_relative 'loaded_die'

describe Hand do
  def hand_with(face_values)
    dice = %w[ Q Q Q Q Q ].map { |value| LoadedDie.new(value) }
    hand = Hand.new( dice )
  end

  it "has five dice, each of which has a known face value" do
    # dice = %w[ Q Q Q Q Q ].map { |value| LoadedDie.new(value) }
    # hand = Hand.new( dice )
    hand = hand_with(nil)
    expect( hand.face_values ).to eq( %w[ Q Q Q Q Q ] )
  end

  specify "a Hand with five Queens is ranked as 'five of a kind'" do
    dice = %w[ Q Q Q Q Q ].map { |value| LoadedDie.new(value) }
    hand = Hand.new( dice )
    expect( hand.rank ).to eq( 'Five of a kind' )
  end

  specify "a bust is not five of a kind" do
    dice = %w[ 9 T J Q A ].map { |value| LoadedDie.new(value) }
    hand = Hand.new( dice )
    expect( hand.rank ).to eq( 'Bupkis' )
  end
end

