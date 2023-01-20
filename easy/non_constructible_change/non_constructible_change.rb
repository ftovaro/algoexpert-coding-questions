module Problem
  def self.non_constructible_change(coins)
    coins.sort!

    change = 0

    coins.each do |coin|
      return change + 1 if coin > change + 1

      change += coin
    end

    return change + 1
  end
end
