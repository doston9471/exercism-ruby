=begin
Write your code for the 'Simple Cipher' exercise in this file. Make the tests in
`simple_cipher_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/simple-cipher` directory.
=end

class Cipher
  CHARS = [*'a'..'z'].freeze
  ENCODE = :+
  DECODE = :-
  attr_reader :key
  def initialize(key = nil)
    raise ArgumentError, "Cipher key allows only lowercase letters." if key && !valid_key?(key)
    @key = key || generate_key
  end
  def encode(text)
    text.chars.map.with_index {|char, index| transcode_char(char, index, ENCODE) }.join
  end
  def decode(text)
    text.chars.map.with_index {|char, index| transcode_char(char, index, DECODE) }.join
  end
  private
  def generate_key(length = 100)
    CHARS.sample(length).join
  end
  def valid_key?(key)
    !key.empty? && key.chars.all? {|char| CHARS.include?(char) }
  end
  def transcode_char(char, index, mode)
    char_index = CHARS.index(char)
    key_index = CHARS.index(key[index % key.size])
    CHARS[(char_index.send(mode, key_index)) % CHARS.size]
  end
end