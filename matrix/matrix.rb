=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
  attr_reader :rows, :columns

  def initialize(matrix_string)
    @rows = matrix_string.split("\n").map { |row| row.split.map(&:to_i) }
    @columns = @rows.transpose
  end

  def row(row_number)
    @rows[row_number - 1]
  end

  def column(column_number)
    @columns[column_number - 1]
  end
end
