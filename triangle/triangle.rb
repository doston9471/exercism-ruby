=begin
Write your code for the 'Triangle' exercise in this file. Make the tests in
`triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/triangle` directory.
=end

class Triangle
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    valid_triangle? && @sides.uniq.length == 1
  end

  def isosceles?
    valid_triangle? && (@sides.uniq.length == 1 || @sides.uniq.length == 2)
  end

  def scalene?
    valid_triangle? && @sides.uniq.length == 3
  end

  private

  def valid_triangle?
    @sides.all? { |side| side > 0 } &&
      (@sides[0] + @sides[1] >= @sides[2]) &&
      (@sides[1] + @sides[2] >= @sides[0]) &&
      (@sides[0] + @sides[2] >= @sides[1])
  end
end
