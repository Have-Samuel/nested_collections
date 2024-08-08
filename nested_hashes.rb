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

# Adding and removing elements
# Adding elements
# To add elements to a hash, you can use the bracket notation or the store method.
vechiles[:edward] = {year: 2020, model: "Tesla", make: "Model 3"}
puts vechiles
# => {:alice=>{:year=>2010, :model=>"Toyota", :make=>"Corolla"}, :bob=>{:year=>2015, :model=>"Ford", :make=>"Fusion"}, :charlie=>{:year=>2018, :model=>"Chevy", :make=>"Malibu"}, :dave=>{:year=>2019, :model=>"Honda", :make=>"Civic"}, :edward=>{:year=>2020, :model=>"Tesla", :make=>"Model 3"}}

# And adding elements to a hash using the store method
vechiles.store(:frank, {year: 2021, model: "BMW", make: "M3"})
puts vechiles
# => {:alice=>{:year=>2010, :model=>"Toyota", :make=>"Corolla"}, :bob=>{:year=>2015, :model=>"Ford", :make=>"Fusion"}, :charlie=>{:year=>2018, :model=>"Chevy", :make=>"Malibu"}, :dave=>{:year=>2019, :model=>"Honda", :make=>"Civic"}, :edward=>{:year=>2020, :model=>"Tesla", :make=>"Model 3"}, :frank=>{:year=>2021, :model=>"BMW", :make=>"M3"}}

# Adding key-value pairs to a hash
vechiles[:edward][:color] = "red"
puts vechiles
vechiles[:frank][:color] = "blue"
puts vechiles
# => {:alice=>{:year=>2010, :model=>"Toyota", :make=>"Corolla"}, :bob=>{:year=>2015, :model=>"Ford", :make=>"Fusion"}, :charlie=>{:year=>2018, :model=>"Chevy", :make=>"Malibu"}, :dave=>{:year=>2019, :model=>"Honda", :make=>"Civic"}, :edward=>{:year=>2020, :model=>"Tesla", :make=>"Model 3", :color=>"red"}, :frank=>{:year=>2021, :model=>"BMW", :make=>"M3", :color=>"blue"}}

# Removing elements
# To remove elements from a hash, you can use the delete method, just like with arrays.
puts vechiles
#  => {:alice=>{:year=>2010, :model=>"Toyota", :make=>"Corolla"}, :bob=>{:year=>2015, :model=>"Ford", :make=>"Fusion"}, :charlie=>{:year=>2018, :model=>"Chevy", :make=>"Malibu"}, :dave=>{:year=>2019, :model=>"Honda", :make=>"Civic"}, :edward=>{:year=>2020, :model=>"Tesla", :make=>"Model 3", :color=>"red"}, :frank=>{:year=>2021, :model=>"BMW", :make=>"M3", :color=>"blue"}}
vechiles.delete(:dave, :edward)
puts vechiles
# => {:alice=>{:year=>2010, :model=>"Toyota", :make=>"Corolla"}, :bob=>{:year=>2015, :model=>"Ford", :make=>"Fusion"}, :charlie=>{:year=>2018, :model=>"Chevy", :make=>"Malibu"}, :frank=>{:year=>2021, :model=>"BMW", :make=>"M3", :color=>"blue"}}

# Then deleting a key-value pair from a hash, We have to fast specify indivdual of the key-value pair, and then the key.
vechiles.alice.delete(:make)
puts vechiles.alice
# => {:year=>2010, :model=>"Toyota"}