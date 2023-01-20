def non_contructuble_change(coins)
  coins.sort!

  change = 0

  coins.each do |coin|
    return change + 1 if coin > change + 1

    change += coin
  end

  return change + 1
end

p "Test #1 #{non_contructuble_change([5, 7, 1, 1, 2, 3, 22]) == 20}"
p "Test #2 #{non_contructuble_change([1, 1, 1, 1, 1]) == 6}"
