=begin
Write your code for the 'Sieve' exercise in this file. Make the tests in
`sieve_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sieve` directory.
=end

class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    numbers = (2..@limit).to_a
    primes = []

    while numbers.length > 0
      prime = numbers.shift
      primes << prime
      numbers.reject! { |number| number % prime == 0 }
    end

    primes
  end
end
