module Problem
  def self.longest_substring_without_duplication_size(string)
    visited = {}
    longest = 1
    start_idx = 0

    string.each_char.with_index(0) do |char, i|
      if visited[char]
        start_idx = [start_idx, visited[char] + 1].max
      end

      if longest < i + 1 - start_idx
        longest = i + 1 - start_idx
      end

      visited[char] = i
    end

    longest

  end
end
