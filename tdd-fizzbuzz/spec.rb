require_relative 'fizzbuzz'

describe Fizzbuzz do
  specify "fb_value(1) is 1" do
    expect( Fizzbuzz.fb_value(1) ).to eq( 1 )
  end

  specify "fb_value(2) is 2" do
    expect( Fizzbuzz.fb_value(2) ).to eq( 2 )
  end

  specify "fb_value(3) is 'Fizz'" do
    expect( Fizzbuzz.fb_value(3) ).to eq( 'Fizz' )
  end

  specify "fb_value(5) is 'Buzz'" do
    expect( Fizzbuzz.fb_value(5) ).to eq( 'Buzz' )
  end
end
