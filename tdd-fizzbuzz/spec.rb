require_relative 'fizzbuzz'

describe Fizzbuzz do
  specify "fb_value(1) is 1" do
    expect( Fizzbuzz.fb_value(1) ).to eq( 1 )
  end
end
