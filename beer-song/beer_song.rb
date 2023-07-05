=begin
Write your code for the 'Beer Song' exercise in this file. Make the tests in
`beer_song_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/beer-song` directory.
=end

class BeerSong
  def self.recite(start, finish)
    start.downto(start - finish + 1).map { |i| verse(i) }.join("\n")
  end
  def self.verse(number)
    case number
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
      "Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
    end
  end
end
