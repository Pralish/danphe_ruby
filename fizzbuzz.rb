# Write a program that prints the number from 1 to 100. But for multiples of three print “Fizz” instead of the number & for the multiples of five print “Buzz”. However, for numbers which are multiples of both three and five print “ FizzBuzz” instead.

(1..100).each do |i| 
  output = ''
  output = 'Fizz' if (i % 3).zero? 
  output += 'Buzz' if (i % 5).zero? 

  p output.present? ? output : i
end 
