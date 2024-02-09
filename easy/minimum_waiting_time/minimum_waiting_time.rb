# Time: O(n log n)
# Space: O(1)

module Problem
  def self.minimum_waiting_time(queries)
    return 0 if queries.length == 1

    queries.sort!

    total_waiting_time = 0
    queries.each_with_index do |query, idx|
      queries_left = queries.length - (idx + 1)
      total_waiting_time += query * queries_left
    end

    total_waiting_time

    # [1, 2, 2, 3, 6]
    #     1, 3, 5, 8 = 17
    #  4, 10,14,17


    # My solution
    # queries.sort!

    # acc = 0
    # times = []
    # queries.each_with_index  do |query, idx|
    #   next if idx == 0

    #   times << acc += queries[idx - 1]
    # end
    # queries.inject(0) do |query, acc|
    #   times << acc += query
    # end
    # times.inject(:+)
  end
end
