=begin
Write your code for the 'Difference Of Squares' exercise in this file. Make the tests in
`difference_of_squares_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/difference-of-squares` directory.
=end

class Squares
  def initialize(n)
    @n = n
  end

  def square_of_sum
    sum = (1..@n).sum
    sum**2
  end

  def sum_of_squares
    (1..@n).sum { |num| num**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
