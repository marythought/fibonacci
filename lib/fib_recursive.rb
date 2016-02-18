def fibonacci_recursive(n)
  n = n.floor
  fail(ArgumentError, "number can't be negative") if n < 0
  n < 2 ? n : fibonacci(n - 1) + fibonacci(n - 2)
end

def fib_for(seconds)
  beginning_time = current_time = Time.now
  n = 0
  # run continuously in increasing increments of i for x seconds
  while current_time - beginning_time < seconds
    puts fibonacci(n)
    n += 1
    current_time = Time.now
  end
end

# test it works
# fib_for(10)
