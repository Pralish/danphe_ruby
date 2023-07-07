# Given three numbers X, Y & Z. write a function/method that finds the greatest among the numbers.

def find_greatest(x,y,z)
  greatest = x
  greatest = y if  y > greatest
  greatest = z if z > greatest

  greatest
end

