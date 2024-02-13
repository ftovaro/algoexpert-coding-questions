# O(nlog(n)) Time
# O(1) Space

module Problem
  def self.tandem_bicycle(red, blue, fastest)
    total = 0
    if fastest
      red.sort!
      blue.sort!.reverse!
    else
      red.sort!
      blue.sort!
    end

    red.length.times do |i|
      total += [red[i], blue[i]].max
    end

    total
  end
end
