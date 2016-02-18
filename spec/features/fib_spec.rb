require "spec_helper"
require "fib.rb"

describe 'fibonacci' do
  it "returns a valid result" do
    assert_equal 0, fibonacci(0)
    assert_equal 1, fibonacci(1)
    assert_equal 1, fibonacci(2)
    assert_equal 2, fibonacci(3)
    assert_equal 3, fibonacci(4)
    assert_equal 5, fibonacci(5)
  end

  it "returns a valid result" do
    assert_equal 0, fibonacci2(0)
    assert_equal 1, fibonacci2(1)
    assert_equal 1, fibonacci2(2)
    assert_equal 2, fibonacci2(3)
    assert_equal 3, fibonacci2(4)
    assert_equal 5, fibonacci2(5)
  end
end
