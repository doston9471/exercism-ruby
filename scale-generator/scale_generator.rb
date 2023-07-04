=begin
Write your code for the 'Scale Generator' exercise in this file. Make the tests in
`scale_generator_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scale-generator` directory.
=end

class Scale
  SHARP_PITCHES = %w(A A# B C C# D D# E F F# G G#)
  FLAT_PITCHES = %w(A Bb B C Db D Eb E F Gb G Ab)

  SHARP = %w(C a G D A E B F# e b f# c# g# d#)
  FLAT = %w(F Bb Eb Ab Db Gb d g c f bb eb)

  INTERVALS = {
    "m" => 1,
    "M" => 2,
    "A" => 3,
  }

  def initialize(tonic)
    @tonic = tonic
  end

  def chromatic
    start = pitches.index(tonic.capitalize)
    pitches[start..] + pitches[0...start]
  end

  def interval(string)
    intervals = string.split("").map { |code| INTERVALS.fetch(code) }
    sequence = ([0] + intervals).each_with_index.inject([]) do |memo, (value, idx)|
      previous_value = memo[idx - 1] || 0
      memo << value + previous_value
      memo
    end
    sequence.map { |idx| octaves(2)[idx] }
  end

  private

  attr_reader :tonic

  def octaves(n)
    chromatic * n
  end

  def pitches
    @pitches ||= SHARP.include?(tonic) ? SHARP_PITCHES : FLAT_PITCHES
  end
end