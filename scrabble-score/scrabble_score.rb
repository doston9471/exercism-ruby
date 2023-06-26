=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end

class Scrabble
  LETTER_VALUES = {
    %w(A E I O U L N R S T) => 1,
    %w(D G) => 2,
    %w(B C M P) => 3,
    %w(F H V W Y) => 4,
    %w(K) => 5,
    %w(J X) => 8,
    %w(Q Z) => 10
  }.freeze

  def initialize(word)
    @word = word.to_s.strip.upcase
  end

  def score
    @word.chars.sum { |letter| letter_score(letter) }
  end

  private

  def letter_score(letter)
    LETTER_VALUES.each do |letters, value|
      return value if letters.include?(letter)
    end
    0
  end
end
