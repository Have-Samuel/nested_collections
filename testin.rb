# Nested arrays are mutable
# mutable 
mutable = Array.new(3, Array(2))
# [[nil, nil], [nil, nil], [nil, nil]]
mutable[0][0] = 1000
# [[1000, nil], [1000, nil], [1000, nil]]
mutable 
# [[1000, nil], [1000, nil], [1000, nil]]

# immutable
immutable = Array.new(3) { Array.new(2) } 
# [[nil, nil], [nil, nil], [nil, nil]]
immutable[0][0] = 1000
# => 1000
immutable
# [[1000, nil], [nil, nil], [nil, nil]]
# Changing the value of the first element of the first nested array does not affect the other nested arrays.