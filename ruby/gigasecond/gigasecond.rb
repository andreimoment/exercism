# gigasecond.rb

require 'date'
require 'time'

class Gigasecond
  def self.from starting_time
    starting_time + (10**9)
  end
end