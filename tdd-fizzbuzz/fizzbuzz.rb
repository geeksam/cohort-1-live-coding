module Fizzbuzz
  extend self

  def fb_value(n)
    divisible_by_three = (n % 3).zero?
    divisible_by_five  = (n % 5).zero?

    s = ''
    if divisible_by_three
      s << "Fizz"
    end
    if divisible_by_five
      s << "Buzz"
    end

    if s.length.zero?
      n
    else
      s
    end
  end
end
