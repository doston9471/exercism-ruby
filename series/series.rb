=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(n)
    raise ArgumentError, "Slice length is too large" if n > @digits.length
    raise ArgumentError, "Slice length cannot be zero or negative" if n <= 0
    raise ArgumentError, "Empty series is invalid" if @digits.empty?

    @digits.chars.each_cons(n).map(&:join)
  end
end
