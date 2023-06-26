=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end

class Complement
  def self.of_dna(dna)
    rna = ""
    dna.each_char do |nucleotide|
      case nucleotide
      when 'G'
        rna << 'C'
      when 'C'
        rna << 'G'
      when 'T'
        rna << 'A'
      when 'A'
        rna << 'U'
      end
    end
    rna
  end
end
