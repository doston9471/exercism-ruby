=begin
Write your code for the 'Wordy' exercise in this file. Make the tests in
`wordy_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/wordy` directory.
=end

class WordProblem
  def initialize(problem)
    @problem = problem
  end

  def answer
    tokens = @problem.scan(/-?\d+|plus|minus|multiplied by|divided by/)
    raise ArgumentError, 'Invalid problem' if tokens.empty? || tokens.size < 3

    result = tokens.shift.to_i

    while tokens.any?
      operation = tokens.shift
      number = tokens.shift.to_i

      case operation
      when 'plus'
        result += number
      when 'minus'
        result -= number
      when 'multiplied by'
        result *= number
      when 'divided by'
        raise ArgumentError, 'Divide by zero error' if number == 0

        result /= number
      else
        raise ArgumentError, 'Unsupported operation'
      end
    end

    result
  end
end
