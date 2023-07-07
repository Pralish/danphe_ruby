# Loop over a string of arbitrary length, and count the occurrence of each character in the string. Note: You can ignore accounting <whitespace>.

def count_characters(str)
  count_hash = Hash.new(0)

  str.delete(' ').downcase.each_char do |char|
    count_hash[char] += 1
  end

  count_hash
end

# with ruby's inbuilt method: tally
def tally_characters(str)
  str.delete(' ').downcase.each_char.tally
end
