

class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError; end

  def self.calculate(first_operand, second_operand, operation)
    begin
      validate_arguments(first_operand, second_operand, operation)
      result = perform_operation(first_operand, second_operand, operation)
      "#{first_operand} #{operation} #{second_operand} = #{result}"
    rescue UnsupportedOperation
      raise UnsupportedOperation, "Unsupported operation: #{operation}"
    rescue ArgumentError
      raise ArgumentError, "Invalid argument types: #{first_operand}, #{second_operand}"
    rescue ZeroDivisionError
      "Division by zero is not allowed."
    end
  end

  def self.validate_arguments(num1, num2, operation)
    raise ArgumentError unless num1.is_a?(Numeric) && num2.is_a?(Numeric)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)
  end

  def self.perform_operation(num1, num2, operation)
    case operation
    when '+'
      num1 + num2
    when '*'
      num1 * num2
    when '/'
      num1 / num2
    end
  end
end
