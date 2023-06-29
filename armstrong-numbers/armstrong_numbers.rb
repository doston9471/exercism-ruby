=begin
Write your code for the 'Armstrong Numbers' exercise in this file. Make the tests in
`armstrong_numbers_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/armstrong-numbers` directory.
=end

module ArmstrongNumbers
  def self.include?(number)
    digits = number.to_s.chars.map(&:to_i)
    num_digits = digits.length
    sum = digits.sum { |digit| digit**num_digits }
    number == sum
  end
end
