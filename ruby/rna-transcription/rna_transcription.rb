# rna_transcription.rb

class Complement


  DNA_TRANSFORM = {source: "GCTA", destination: "CGAU"}
  RNA_TRANSFORM = {source: "CGAU", destination: "GCTA"}

  def self.of_dna dna
    self.find_complement dna, DNA_TRANSFORM
  end

  def self.of_rna rna
    self.find_complement rna, RNA_TRANSFORM
  end

  private

  def self.find_complement sequence, transformation
    raise ArgumentError if sequence.tr(transformation[:source], "") != ""

    complement = sequence.tr(transformation[:source], transformation[:destination])
  end

end

