def add_onto_arry(your_array, item_to_add)
  your_array << item_to_add
end

p add_onto_arry(["a", "b", "c", 1, 2], 3)
p add_onto_arry([], "a")



def bld_arry(item1, item2, item3)
  array = []
  array += [item1, item2, item3]
end

house_types = []
p house_types

house_types += ["bungalow", "shotgun", "tiny", "ranch", "mcmansion"]
p house_types

#delete tiny
house_types.delete_at(2)
p house_types

house_types.insert(2, "tinyhouse")
p house_types

# Number 5
house_types.delete("bungalow")
p house_types


# Number 6
answer = house_types.include?("shotgun")
puts "Does shotgun exist in the array: " + answer.to_s

car_types = ["mazda", "corvette", "jeep"]
newvar = house_types.concat(car_types)
p newvar

puts bld_arry(1, "two", nil)
puts bld_arry("cats", "dogs", 13)