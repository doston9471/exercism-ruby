=begin
Write your code for the 'All Your Base' exercise in this file. Make the tests in
`all_your_base_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/all-your-base` directory.
=end

class BaseConverter
  def self.convert(input_base, digits, output_base)
    validate_bases(input_base, output_base)
    validate_digits(input_base, digits)

    decimal = convert_to_decimal(input_base, digits)
    convert_from_decimal(decimal, output_base)
  end

  def self.validate_bases(input_base, output_base)
    raise ArgumentError, "Invalid input base" if input_base <= 1
    raise ArgumentError, "Invalid output base" if output_base <= 1
  end

  def self.validate_digits(input_base, digits)
    raise ArgumentError, "Invalid digit" if digits.any? { |digit| digit < 0 || digit >= input_base }
  end

  def self.convert_to_decimal(input_base, digits)
    digits.reverse.each_with_index.sum { |digit, index| digit * (input_base**index) }
  end

  def self.convert_from_decimal(decimal, output_base)
    return [0] if decimal == 0

    result = []
    while decimal > 0
      result.unshift(decimal % output_base)
      decimal /= output_base
    end
    result
  end
end
