# difference_of_squares.rb

class Squares

  def initialize(max_n)
    @sequence = 1..max_n
  end

  def square_of_sums
    @sequence.reduce(:+) ** 2
  end

  def sum_of_squares
    @sequence.reduce do |sum, n|
      sum + n ** 2
    end
  end

  def difference
    square_of_sums - sum_of_squares
  end

end