require_relative 'hand'
require_relative 'loaded_die'

describe Hand do
  def hand_with(face_values)
    # What we started with
    dice = face_values.map { |value|
      LoadedDie.new(value)
    }
    # Intermediate version
    dice = face_values.map { |value|
      obj = Object.new
      obj.define_singleton_method(:face_value) { value }
      obj
    }
    # Using RSpec's #double method
    dice = face_values.map { |value|
      double("Die", :face_value => value)
    }
    hand = Hand.new( dice )
  end

  it "has five dice, each of which has a known face value" do
    hand = hand_with(%w[ Q Q Q Q Q ])
    expect( hand.face_values ).to eq( %w[ Q Q Q Q Q ] )
  end

  specify "a Hand with five Queens is ranked as 'five of a kind'" do
    hand = hand_with(%w[ Q Q Q Q Q ])
    expect( hand.rank ).to eq( 'Five of a kind' )
  end

  specify "a bust is not five of a kind" do
    hand = hand_with(%w[ 9 T J Q A ])
    expect( hand.rank ).to eq( 'Bupkis' )
  end

  it "should do the thing"
  it "should do that other thing too"
  it "should avoid that terrible failure mode"
end

