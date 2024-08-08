vechiles = {
  alice: {year: 2010, model: "Toyota", make: "Corolla"},
  bob: {year: 2015, model: "Ford", make: "Fusion"},
  charlie: {year: 2018, model: "Chevy", make: "Malibu"},
  dave: {year: 2019, model: "Honda", make: "Civic"}
}

puts vechiles[:alice][:model] # => Toyota
puts vechiles[:bob][:make]    # => Ford
puts vechiles[:charlie][:year]  # => 2018
puts vechiles[:dave][:model]  # => Honda

# Accessing unavailable keys
# If you try to access a key that does not exist in a hash, Ruby will return nil.
# You may use the DIG method to access nested hashes
puts vechiles[:alice][:color] # => nil
puts vechiles.dig(:alice, :color) # => nil
puts vechiles.dig(:bob, :color) # => nil

