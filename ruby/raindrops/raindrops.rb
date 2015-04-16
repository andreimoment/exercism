# raindrops.rb

class Raindrops
  PRIME_FACTORS = {3 => "Pling", 5 => "Plang", 7 =>"Plong"}

  def self.convert(n)
    r = PRIME_FACTORS.map do |k,v|
      if n % k == 0
        v
      else
        ""
      end
    end.join
    puts r
    r = "#{n}" if r == ""
  end
end

puts Raindrops.convert(15)