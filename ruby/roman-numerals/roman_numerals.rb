# roman_numerals.rb

class Fixnum

  def to_roman
    romanize_1_9(self)
  end

  private

  def romanize_1_9(n)
    case n
    when 1
      "I"
    when 2
      "II"
    when 3
      "III"
    when 4
      "IV"
    when 5
      "V"
    when 6
      "VI"
    when 9
      "IX"
    end
  end

end