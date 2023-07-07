# Write a method - let's call it boxy(n) - which produces output in STDOUT as shown below.

def boxy(n)
  digit_length = n.to_s.length
  border_solid = '----' * n  + '-' * digit_length

  # box with single digit requires 4 '-'s, double digit requires 5 '-'s, and so on.. 
  # this logic with compensate the missing '-'s
  if digit_length > 1
    1.upto(digit_length - 1) do |l|
      border_solid += '-' * (n - 10.pow(l))
    end
  end

  border_dashed = border_solid.gsub('--', '- ')

  str = "|"
  1.upto(n) do |i|
    str += " #{i} |"
  end

  puts border_dashed
  puts border_solid
  puts str
  puts border_solid
  puts border_dashed
end