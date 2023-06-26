=begin
Write your code for the 'Pangram' exercise in this file. Make the tests in
`pangram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pangram` directory.
=end

class Pangram
  def self.pangram?(sentence)
    alphabet = ('a'..'z').to_a
    sentence.downcase.chars.uniq.sort.join =~ /[#{alphabet.join}]{26}/
  end
end
