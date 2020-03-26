#!/usr/bin/ruby
# Do this with loops
# * * * * * * * * *
# * * * *   * * * *
# * * *       * * *
# * *           * *
# *               *
# * * * * * * * * *

char = "* "
blank = -1
divide = 5

6.times do |i|
  temp_blank = blank
  9.times do |a|
    if blank > 0 and i != 5
      if divide > a
        print char
        next
      end
      temp_blank -= 1
      if temp_blank >= 0
        print "  "
      else
        print char
      end
    else
      print char
    end
  end
  blank += 2
  divide -= 1
  print "\n"
end
