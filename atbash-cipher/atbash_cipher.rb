=begin
Write your code for the 'Atbash Cipher' exercise in this file. Make the tests in
`atbash_cipher_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/atbash-cipher` directory.
=end

class Atbash
  ALPHABET = 'abcdefghijklmnopqrstuvwxyz'
  CIPHER = 'zyxwvutsrqponmlkjihgfedcba'

  def self.encode(plaintext)
    plaintext.downcase.gsub(/[^a-z0-9]/, '').tr(ALPHABET, CIPHER).scan(/.{1,5}/).join(' ')
  end

  def self.decode(ciphertext)
    ciphertext.downcase.gsub(/[^a-z0-9]/, '').tr(CIPHER, ALPHABET)
  end
end
