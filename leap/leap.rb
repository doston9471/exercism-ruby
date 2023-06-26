=begin
Write your code for the 'Leap' exercise in this file. Make the tests in
`leap_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/leap` directory.
=end

class Year
  def self.leap?(year)
    if (year % 4).zero?
      if (year % 100).zero?
        (year % 400).zero?
      else
        true
      end
    else
      false
    end
  end
end
