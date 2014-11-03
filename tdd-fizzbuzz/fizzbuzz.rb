module Fizzbuzz
  extend self

  def fb_value(n)
    divisible_by_three = (n % 3).zero?
    divisible_by_five  = (n % 5).zero?

    if divisible_by_three && divisible_by_five
      "FizzBuzz"
    elsif divisible_by_three
      "Fizz"
    elsif divisible_by_five
      "Buzz"
    else
      n
    end
  end
end
