# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


puts "TESTING the HotelReservation class..."
puts

hotelreservation = HotelReservation.new(customer_name: Melanie Ilseman, date: 05-08-1989, room_number: 230, amenities: [fridge, crib, shower cap]) 

result = hotelreservation.customer_name

puts "customer_name returned:"
puts result
puts

if result == "Melanie Ilseman"
  puts "PASS!"
else
  puts "F"
end
puts

result = hotelreservation.date

puts "date returned:"
puts result
puts

if result == 05-08-1989
  puts "PASS!"
else
  puts "F"
end
puts

result = hotelreservation.amenities

puts "amenities returned:"
puts result
puts

if result == [fridge, crib, shower cap]
  puts "PASS!"
else
  puts "F"
end





# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

