input = File.open('../input.txt', 'r')

res = input.map do |line|
  numbers = line.scan(/\d/)
  [numbers[0], numbers[-1]].join.to_i
end.sum

p res
