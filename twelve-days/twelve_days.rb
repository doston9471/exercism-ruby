=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end

class TwelveDays
  GIFTS = [
    { first:   'a Partridge in a Pear Tree' },
    { second:   'two Turtle Doves' },
    { third:    'three French Hens' },
    { fourth:   'four Calling Birds' },
    { fifth:    'five Gold Rings' },
    { sixth:    'six Geese-a-Laying' },
    { seventh:  'seven Swans-a-Swimming' },
    { eighth:   'eight Maids-a-Milking' },
    { ninth:    'nine Ladies Dancing' },
    { tenth:    'ten Lords-a-Leaping' },
    { eleventh: 'eleven Pipers Piping' },
    { twelfth:  'twelve Drummers Drumming' },
  ]

  DAYS = GIFTS.size

  def self.song
    new.song
  end

  def song
    DAYS.times.map{ |n| verse(n) }.join("\n")
  end

  private

  def verse(n)
    "On the #{day(n)} day of Christmas my true love gave to me: #{to_phrase(gifts(n))}.\n"
  end

  def day(n)
    GIFTS[n].keys.first.to_s
  end

  def gifts(n)
    GIFTS.take(n + 1).flat_map(&:values).reverse
  end

  def to_phrase(gifts)
    *gifts, last_gift = gifts
    return last_gift if gifts.empty?
    "#{gifts.join(', ')}, and #{last_gift}"
  end
end