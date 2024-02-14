module Problem
  def self.palindrome_check(string)
    i = 0
    j = string.length - 1

    while i < j
      return false if string[i] != string[j]
      i += 1
      j -= 1
    end

    true
  end
end
