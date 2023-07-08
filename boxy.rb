# Write a method - let's call it boxy(n) - which produces output in STDOUT as shown below.
# 
# ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ 
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# ┃ 1 ┃ 2 ┃ 3 ┃ 4 ┃ 5 ┃ 6 ┃ 7 ┃ 8 ┃ 9 ┃ 10 ┃
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ ━ 

HORIZONTAL_LINE = 0x2501.chr('UTF-8').freeze
VERTICAL_LINE = 0x2503.chr('UTF-8').freeze

def boxy(n)
  digit_length = n.to_s.length
  border_solid = HORIZONTAL_LINE * n * 4  + HORIZONTAL_LINE * digit_length

  # box with single digit requires 4 '-'s, double digit requires 5 '-'s, and so on.. 
  # this logic with compensate the missing '-'s
  if digit_length > 1
    1.upto(digit_length - 1) do |l|
      border_solid += HORIZONTAL_LINE * (n - 10.pow(l))
    end
  end

  border_dashed = border_solid.gsub(HORIZONTAL_LINE * 2, "#{HORIZONTAL_LINE} ")

  str = VERTICAL_LINE
  1.upto(n) do |i|
    str += " #{i} #{VERTICAL_LINE}"
  end

  puts border_dashed
  puts border_solid
  puts str
  puts border_solid
  puts border_dashed
end