class Complement

  DNA = "GCTA"
  RNA = "CGAU"

  def self.of_dna dna
    self.find_complement dna, DNA, RNA
  end

  def self.of_rna rna
    self.find_complement rna, RNA, DNA
  end

  private

  def self.find_complement sequence, source, destination
    raise ArgumentError unless valid_sequence?(sequence, source)

    complement = sequence.tr(source, destination)
  end

  def self.valid_sequence?(sequence, allowed_letters)
    (sequence.chars | allowed_letters.chars).length == 4
  end

end

