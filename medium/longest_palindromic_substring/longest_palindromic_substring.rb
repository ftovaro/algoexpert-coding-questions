module Problem
  def self.longest_palindromic_substring(string)
    return string[0] if string.length == 1

    i = 0
    j = 0
    substring = [0, 1]

    string.each_char.with_index(0) do |char, k|
      i = k - 1
      j = k + 1

      while string[i] == string[j]
        break if string[i] == nil || string[j] == nil

        if substring[1] - substring[0] < j + 1 - i
          substring = [i, j + 1]
        end
        i -= 1
        j += 1
      end

      while string[i] == string[j - 1]
        break if string[i] == nil || string[j - 1] == nil

        if substring[1] - substring[0] < j - 1 + 1 - i
          substring = [i, j - 1 + 1]
        end
        i -= 1
        j += 1
      end
    end

    string[substring[0]...substring[1]]
  end
end
