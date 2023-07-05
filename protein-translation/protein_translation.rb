=begin
Write your code for the 'Protein Translation' exercise in this file. Make the tests in
`protein_translation_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/protein-translation` directory.
=end

class Translation
  CODONS = {
    AUG: "Methionine",
    UUU: "Phenylalanine",
    UUC: "Phenylalanine",
    UUA: "Leucine",
    UUG: "Leucine",
    UCU: "Serine",
    UCC: "Serine",
    UCA: "Serine",
    UCG: "Serine",
    UAU: "Tyrosine",
    UAC: "Tyrosine",
    UGU: "Cysteine",
    UGC: "Cysteine",
    UGG: "Tryptophan",
    UAA: "STOP",
    UAG: "STOP",
    UGA: "STOP"
  }

  def self.of_codon(codon)
    Translation.new.of_codon(codon)
  end

  def self.of_rna(strand)
    Translation.new.of_rna(strand)
  end

  def of_codon(codon)
    raise InvalidCodonError.new("InvalidCodonError"), "Yes, this is an InvalidCodonError" unless is_valid_codon?(codon)
    CODONS.fetch(codon.to_sym)
  end

  def of_rna(strand)
    rna = []
    rna_to_ary(strand).each { |codon| of_codon(codon) == "STOP" ? break : rna << of_codon(codon) }
    rna
  end

  private

  def rna_to_ary(strand)
    strand.scan(/.{1,3}/).map(&:to_sym)
  end

  def is_valid_codon?(codon)
    CODONS.key?(codon.to_sym)
  end
end

class InvalidCodonError < StandardError
  def initialize(data)
    @data = data
  end
end
