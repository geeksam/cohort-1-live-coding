module Fizzbuzz
  extend self

  def fb_value(n)
    divisible_by_three = (n % 3).zero?
    divisible_by_five  = (n % 5).zero?

    s = ''
    s << "Fizz" if divisible_by_three
    s << "Buzz" if divisible_by_five

    if s.length.zero?
      n
    else
      s
    end
  end
end
