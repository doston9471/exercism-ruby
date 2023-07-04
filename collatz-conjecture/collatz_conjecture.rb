=begin
Write your code for the 'Collatz Conjecture' exercise in this file. Make the tests in
`collatz_conjecture_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/collatz-conjecture` directory.
=end

class CollatzConjecture
  def self.steps(n)
    raise ArgumentError, 'Input must be a positive integer' if n <= 0
    steps = 0

    while n != 1
      if n.even?
        n /= 2
      else
        n = 3 * n + 1
      end
      steps += 1
    end

    steps
  end
end
