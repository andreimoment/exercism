# difference_of_squares.rb

class Squares

  def initialize(max_n)
    @max_n = max_n
  end

  def square_of_sums
    (1..@max_n).inject(0) do |sum, n|
      sum += n
    end ** 2
  end

  def sum_of_squares
    (1..@max_n).inject(0) do |sum, n|
      sum += n ** 2
    end
  end

  def difference
    square_of_sums - sum_of_squares
  end

end