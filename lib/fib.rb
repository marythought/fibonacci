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

# accepts a negative number
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

# fib with log(n) complexity adapted from pseudocode from http://stackoverflow.com/a/1526036/5100791
def fib_log_n(count)
  n = count.abs
  a = 1
  b = 0
  p = 0
  q = 1
  while n > 0
    if n.even?
      oldp = p
      p = (p * p) + (q * q)
      q = (2 * oldp * q) + (q * q)
      n /= 2
    else
      olda = a
      a = (b * q) + (a * q) + (a * p)
      b = (b * p) + (olda * q)
      n -= 1
    end
  end
  count > 0 ? b : count.even? ? -b : b
end
