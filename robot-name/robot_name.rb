=begin
Write your code for the 'Robot Name' exercise in this file. Make the tests in
`robot_name_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/robot-name` directory.
=end

class Robot
  attr_reader :name

  @@used_names = {}

  def initialize
    generate_unique_name
  end

  def reset
    release_name
    generate_unique_name
  end

  def self.forget
    @@used_names.clear
  end

  private

  def generate_unique_name
    @name = generate_name until unique_name?
    @@used_names[@name] = true
  end

  def generate_name
    "#{random_letters}#{random_digits}"
  end

  def random_letters
    ('A'..'Z').to_a.sample(2).join
  end

  def random_digits
    rand(100..999).to_s
  end

  def unique_name?
    !@@used_names.include?(@name)
  end

  def release_name
    @@used_names.delete(@name)
  end
end
