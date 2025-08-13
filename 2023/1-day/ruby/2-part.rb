WORDS_TO_DIGITS = {
  'zero': 0,
  'one': 1,
  'two': 2,
  'three': 3,
  'four': 4,
  'five': 5,
  'six': 6,
  'seven': 7,
  'eight': 8,
  'nine': 9
}.freeze

def digits(line)
  first_d, second_d = ''
  characters = line.split('')

  characters.each do |ch|
    if WORDS_TO_DIGITS.values.map(&:to_s).include ch
      first_d = ch
      break
    end
  end

  characters.reverse.each do |ch|
    if WORDS_TO_DIGITS.values.map(&:to_s).include ch
      second_d = ch
      break
    end
  end
end

res = File.open('../input.txt', 'r').map do |line|
  digits(line)
end.sum
p res
