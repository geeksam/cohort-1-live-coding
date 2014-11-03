module Fizzbuzz
  extend self

  def fb_value(n)
    if (n % 3).zero?
      "Fizz"
    else
      n
    end
  end
end
