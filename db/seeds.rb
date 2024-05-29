p 'Deleting previous records...'
Restaurant.delete_all

p 'Creating new records...'
rest_1 = Restaurant.new(name: 'Flango Flito', address: 'Beijing', category: 'chinese')
rest_2 = Restaurant.new(name: 'Mamma Mia', address: 'Rome', category: 'italian')
rest_3 = Restaurant.new(name: 'Harumaki', address: 'Tokyo', category: 'japanese')
rest_4 = Restaurant.new(name: 'La Baguette', address: 'Paris', category: 'french')
rest_5 = Restaurant.new(name: 'Wafflez for Dayz', address: 'Brussels', category: 'belgian')


p 'Inserting the records in the database...'
[rest_1, rest_2, rest_3, rest_4, rest_5].each do |restaurant|
  if restaurant.valid?
    restaurant.save
    p "Saved #{restaurant.name} in the database."
  end
end

p 'Finished!'
