def solution n
  binary = n.to_s(2)
  zero_array = binary.split(/(?!1)(0+)(?=1)/)
  zero_array.delete_if{ |value| value =~ /1+/ }
  return 0 if zero_array.empty?
  zero_array.max.length
end