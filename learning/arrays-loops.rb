# CRUD
# Create
# Read
# Update
# Delete

array = ['Kevin', 'Roro', 'Amanda', 'Cindy', 'Mum']

# Create - adds an element to array
array << 'John'
puts array

# Read - how to get an element in an array
puts array[2]

# Update
array[5] = "Mickey"
puts array

# Delete
print array
array.delete_at(2)
print array
