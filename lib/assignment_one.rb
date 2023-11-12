# frozen_string_literal: true

puts 'Assignment One Initialized'
puts 'Fibonaccie Series'

def fibs(num)
  sequence = [0, 1]
  sequence << sequence[-1] + sequence[-2] while sequence.length < num
  sequence
end

def fibs_rec(num)
  # base case
  if num <= 1
    num
  else
    # recursive case
    fibs_rec(num - 1) + fibs_rec(num - 2)
  end
end

num = 8
fibs = []
(0..num - 1).each do |i|
  fibs << fibs_rec(i)
end
p fibs
