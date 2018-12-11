
def persistence(n, count)
  puts "Count is #{count}"
  return count if n < 10
  count += 1
  next_number = n.to_s.split("")
                 .map! { |num| num.to_i }
                 .reduce(:*)
  persistence(next_number, count)
end
