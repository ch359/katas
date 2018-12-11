
def persistence(n)
  number_array = []
  number_array.push(n)

  while true
    break if number_array.last < 10
    number_array.push(get_next_number(number_array.last))
  end
  number_array.size - 1
end

def get_next_number(number)
  number.to_s.split("")
        .map! { |num| num.to_i }
        .reduce(:*)
end
