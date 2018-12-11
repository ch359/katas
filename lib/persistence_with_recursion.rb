
def persistence(n)
  count = 0
  calculate(n, count)
end

def calculate(n, count)
  return count if n < 10
  count += 1
  next_number = n.to_s.split("")
                 .map! { |num| num.to_i }
                 .reduce(:*)
  calculate(next_number, count)
end
