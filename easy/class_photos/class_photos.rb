# O(nlog(n)) Time, O(1) Space

module Problem
  def self.class_photos(red, blue)
    red.sort
    blue.sort

    color_back_row = red.last > blue.last ? 'red' : 'blue'

    red.length.times do |i|
      if color_back_row == 'red'
        return false if red[i] <= blue[i]
      else
        return false if blue[i] <= red[i]
      end
    end

    return true
  end
end
