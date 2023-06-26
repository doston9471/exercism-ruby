=begin
Write your code for the 'Space Age' exercise in this file. Make the tests in
`space_age_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/space-age` directory.
=end

class SpaceAge
  EARTH_YEAR_SECONDS = 31_557_600 # Number of seconds in an Earth year

  attr_reader :seconds

  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    age_on_planet(1.0)
  end

  def on_mercury
    age_on_planet(0.2408467)
  end

  def on_venus
    age_on_planet(0.61519726)
  end

  def on_mars
    age_on_planet(1.8808158)
  end

  def on_jupiter
    age_on_planet(11.862615)
  end

  def on_saturn
    age_on_planet(29.447498)
  end

  def on_uranus
    age_on_planet(84.016846)
  end

  def on_neptune
    age_on_planet(164.79132)
  end

  private

  def age_on_planet(orbital_period)
    (seconds / (EARTH_YEAR_SECONDS * orbital_period)).round(2)
  end
end
