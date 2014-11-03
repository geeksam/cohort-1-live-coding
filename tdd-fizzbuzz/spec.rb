require_relative 'fizzbuzz'

describe Fizzbuzz do
  specify "fb_value(1) is 1" do
    expect( Fizzbuzz.fb_value(1) ).to eq( 1 )
  end

  specify "fb_value(2) is 2" do
    expect( Fizzbuzz.fb_value(2) ).to eq( 2 )
  end
end
