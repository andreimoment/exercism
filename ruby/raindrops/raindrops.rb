# raindrops.rb

class Raindrops
  PRIME_FACTORS = {3 => "Pling", 5 => "Plang", 7 =>"Plong"}

  def self.convert(n)
    result = PRIME_FACTORS.map do |k,v|
      v if n % k == 0
    end.join

    result = "#{n}" if result.empty?

    result
  end
end