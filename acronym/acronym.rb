=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
  def self.abbreviate(phrase)
    phrase.gsub(/[^a-zA-Z0-9\- ]/, '')  # Remove non-alphanumeric characters and underscores, except hyphens
          .split(/[\s\-]+/)                # Split the phrase into words using whitespace and hyphens
          .map { |word| word[0].capitalize if word }  # Capitalize the first letter of each word
          .join('')                      # Join the letters together to form the acronym
  end
end