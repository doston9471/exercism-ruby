=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

class Luhn
  def self.valid?(number)
    stripped_number = number.gsub(/\s+/, "")
    return false if stripped_number.length <= 1 || stripped_number.match?(/\D/)

    digits = stripped_number.reverse.chars.map(&:to_i)
    doubled_digits = digits.map.with_index { |digit, index| index.odd? ? double_digit(digit) : digit }
    total = doubled_digits.sum

    (total % 10).zero?
  end

  private

  def self.double_digit(digit)
    doubled = digit * 2
    doubled > 9 ? doubled - 9 : doubled
  end
end
