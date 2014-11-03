module Fizzbuzz
  extend self

  def fb_value(n)
    if (n % 3).zero?
      "Fizz"
    elsif (n % 5).zero?
      "Buzz"
    else
      n
    end
  end
end
