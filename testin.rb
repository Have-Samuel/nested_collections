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

# Adding and removing elements
# Adding elements
# To add elements to an array, you can use the push method or the shovel operator (<<).
test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

test_scores << [100, 99, 98, 97]
# => [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
test_scores[0].push(100)
# => [97, 76, 79, 93, 100]
test_scores
# => [[97, 76, 79, 93, 100], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]

# Removing elements
# To remove elements from an array, you can use the pop method or the delete method.
test_scores.pop
# => [100, 99, 98, 97]
test_scores[0].pop
# => 100
test_scores
# => [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]

# Iterating over nested arrays
# Iterating over nested arrays using the #each_with_index method
new_array = teacher_mailboxes.each_with_index do |row, index_row|
  puts "Row: #{index_row} = #{row}"
end
p new_array
#[["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]

# Iterating over individual elements inside of each row, here we shall need to nest another #each_with_index method
indivual_ele = teacher_mailboxes.each_with_index do |row, index_row|
  row.each_with_index do |teacher, column_index|
    puts "Row: #{index_row} Column: #{column_index} = #{teacher}"
  end
end
p indivual_ele
# Row: 0 Column: 0 = Adams
# Row: 0 Column: 1 = Baker
# Row: 0 Column: 2 = Clark
# Row: 0 Column: 3 = Davis

# Row: 1 Column: 0 = Jones
# Row: 1 Column: 1 = Lewis
# Row: 1 Column: 2 = Lopez
# Row: 1 Column: 3 = Moore

# Row: 2 Column: 0 = Perez
# Row: 2 Column: 1 = Scott
# Row: 2 Column: 2 = Smith
# Row: 2 Column: 3 = Young
# => [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]