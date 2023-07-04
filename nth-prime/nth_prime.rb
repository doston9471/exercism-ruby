=begin
Write your code for the 'Nth Prime' exercise in this file. Make the tests in
`nth_prime_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nth-prime` directory.
=end

class Prime
  def self.nth(n)
    raise ArgumentError if n < 1

    primes = []
    number = 2

    while primes.length < n
      primes << number if is_prime?(number)
      number += 1
    end

    primes.last
  end

  def self.is_prime?(number)
    (2..Math.sqrt(number)).none? { |i| number % i == 0 }
  end
end
