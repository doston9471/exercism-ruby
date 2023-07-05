=begin
Write your code for the 'Crypto Square' exercise in this file. Make the tests in
`crypto_square_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/crypto-square` directory.
=end

class Crypto
  attr_reader :plaintext

  def initialize(plaintext)
    @plaintext = normalize(plaintext)
  end

  def ciphertext
    return '' if plaintext.empty?

    rows, columns = calculate_dimensions
    chunks = plaintext.scan(/.{1,#{columns}}/)
    encoded_chunks = chunks.map { |chunk| chunk.ljust(columns) }
    encoded_chunks.map(&:chars).transpose.map(&:join).join(' ')
  end

  private

  def normalize(text)
    text.downcase.gsub(/[^a-z0-9]/, '')
  end

  def calculate_dimensions
    length = plaintext.length
    columns = Math.sqrt(length).ceil
    rows = (length.to_f / columns).ceil
    [rows, columns]
  end
end
