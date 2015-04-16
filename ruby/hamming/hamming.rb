# hamming.rb

class Hamming
  def self.compute(a,b)
    a.chars.zip(b.chars).count do |a_b|
      a_b[0] != a_b[1]
    end
  end
end