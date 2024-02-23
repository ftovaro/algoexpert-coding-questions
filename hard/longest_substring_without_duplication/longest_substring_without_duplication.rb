# O(n) Time
# O(min(n, a)) Space

module Problem
  def self.longest_substring_without_duplication(string)
    visited = {}
    longest = [0, 1]
    start_idx = 0

    string.each_char.with_index(0) do |char, i|
      if visited[char]
        start_idx = [start_idx, visited[char] + 1].max
      end

      if longest[1] - longest[0] < i + 1 - start_idx
        longest = [start_idx, i + 1]
      end

      visited[char] = i
    end

    string[longest[0]...longest[1]]
  end
end
