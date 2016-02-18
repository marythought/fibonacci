# O(n) time and O(n) space
def fibonacci(n)
  return 0 if n == 0
  return 1 if n == 1 || n == 2
  sequence = [0, 1, 1]
  loop do
    sequence << (sequence[-1] + sequence[-2])
    break if sequence.length > n
  end
  sequence[-1]
end

# same O(n) time but O(1) space
def fibonacci2(n)
  return 0 if n == 0
  return 1 if n == 1 || n == 2
  last = 0
  lastlast = 1
  current = 0
  n.times do
    current = last + lastlast
    lastlast = last
    last = current
  end
  current
end

# accepts a negative numberdef fib(n)
def fibonacci3
  return 0 if n == 0
  return 1 if n == 1 || n == 2 || n == -1
  sequence = [0, 1, 1]
  loop do
    sequence << (sequence[-1] + sequence[-2])
    break if sequence.length > n.abs
  end
  n > 0 ? sequence[-1] : n.even? ? -(sequence[-1]) : sequence[-1]
end

def fib(n)
  return 0 if n == 0
  return 1 if n == 1 || n == 2 || n == -1
  last = 0
  lastlast = 1
  current = 0
  n.abs.times do
    current = last + lastlast
    lastlast = last
    last = current
  end
  n > 0 ? current : n.even? ? -current : current
end
