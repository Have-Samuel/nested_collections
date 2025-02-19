contacts = {
  "Jon Snow" => {
    name: "Jon",
    email: "jon_snow@thewall.we",
    favorite_ice_cream_flavors: ["chocolate", "vanilla", "mint chip"],
    knows: nil
  },
  "Freddy Mercury" => {
    name: "Freddy",
    email: "freddy@mercury.com",
    favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  }
}

contacts.each do |person, data|
  # Iterate for each person and data
  puts "#{person}'s #{data}"
  # Iterate for each attribute and value
  data.each do |attribute, value|
    puts "#{attribute}: #{value}"
    # Iterate for each value in the favorite_ice_cream_flavors
    if attribute == :favorite_ice_cream_flavors
      value.each do |flavour|
        puts "My favorite ice cream flavor is: #{flavour}"
      end
    end
  end
end

# CHALLENGES
def blank_seating_chart(number_of_rows, seats_per_row)
  # return a 2d array to represent a seating chart that contains
  # number_of_rows nested arrays, each with seats_per_row entries of nil to
  # represent that each seat is empty.

  # Example: blank_seating_chart(2, 3) should return:
  # [
  #   [nil, nil, nil],
  #   [nil, nil, nil]
  # ]

  # NOTE: if one of the nested arrays is changed, the others should **not**
  # change with it
  Array.new(number_of_rows) { Array.new(seats_per_row)}
end

def add_seat_to_row(chart, row_index, seat_to_add)
  # take a chart (2d array)  and add seat_to_add to the end of the row that is
  # at row_index index of the chart, then return the chart
  chart[row_index].push(seat_to_add)
end

def add_another_row(chart, row_to_add)
  # take a chart and add row_to_add to the end of the chart,
  # then return the chart.
  chart.push(row_to_add)
  chart << row_to_add
end

def delete_seat_from_row(chart, row_index, seat_index)
  # take a chart and delete the seat at seat_index of the row at row_index of
  # the chart, then return the chart
  # Hint: explore the ruby docs to find a method for deleting from an array!
  chart[row_index].delete_at(seat_index)
  chart
end

def delete_row_from_chart(chart, row_index)
  # take a chart and delete the row at row_index of the chart,
  # then return the chart
  chart.delete_at(row_index)
  chart
end

def count_empty_seats(chart)
  # take a chart and return the number of empty (nil) seats in it

  # NOTE: `chart` should **not** be mutated
  chart.flatten.count(nil)
  # What does the flatten method do?
  # The flatten method returns a new array that is a one-dimensional flattening of the original array.
  # It means that it converts a multi-dimensional array into a one-dimensional array.
  # What does the count method do?
  # The count method returns the number of elements in the array that meet the condition specified in the block.
end

def find_favorite(array_of_hash_objects)
  # take an array_of_hash_objects and return the hash which has the key/value
  # pair :is_my_favorite? => true. If no hash returns the value true to the key
  # :is_my_favorite? it should return nil

  # array_of_hash_objects will look something like this:
  # [
  #   { name: 'Ruby', is_my_favorite?: true },
  #   { name: 'JavaScript', is_my_favorite?: false },
  #   { name: 'HTML', is_my_favorite?: false }
  # ]

  # TIP: there will only be a maximum of one hash in the array that will
  # return true to the :is_my_favorite? key
  array_of_hash_objects.find { |hash| hash[:is_my_favorite?] == true }

  # What does the find method do?
  # The find method returns the first element in the array that meets the condition specified in the block.
  # In this case, it returns the first hash that has the key/value pair :is_my_favorite? => true.
  # If no hash meets the condition, it returns nil.
end
