# Write a function/method in a generic manner such that it can convert from one number system to another; consider decimal to octal and binary. This method should take in three arguments as indicated below.


# Using meta programming
def convert_number(number, from, to)
  send("#{from}_to_#{to}".to_sym, number)
rescue NoMethodError
  "Method not defined"
end

private

def decimal_to_binary(decimal)
  binary = ""

  while decimal > 0
    binary = (decimal % 2).to_s + binary 
    decimal = decimal / 2.floor
  end

  binary
end

def decimal_to_octal(decimal)
  octal = 0
  count = 1

  while decimal != 0
    remainder = decimal % 8
    octal += remainder * count
    count = count * 10
    decimal = decimal / 8.floor
  end

  octal
end



#########################################################################


# Using ruby inbuilt method
def convert_number(number, from, to)
  base_hash = {
    decimal: 10,
    octal: 8,
    binary: 2
  }

  number.to_s.to_i(base_hash[from.to_sym]).to_s(base_hash[to.to_sym])
end