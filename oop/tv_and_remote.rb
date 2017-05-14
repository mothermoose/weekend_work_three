class Tv (power, volume, channel)
  attr_reader :power, :volume, :channel

  def initialize (input_options)
    @power = input_options[:power]
    @volume = input_options[:volume]
    @channel = input_options[:channel]
  end 
end 

class Remote (tv)

  def toggle_power
    if tv = on
      tv = off
    end 
    if tv = off
      tv = on
    end 
  end 

  def increment_volume
    volume += 1
  end  

  def decrement_volume
    volume -=1
  end 

  def set_channel 
    new_channel = channel
  end 
end  

puts "TESTING the TV class..."
puts

tv = Tv.new({power: "on", volume: 4, channel: 22})

result = tv.power

puts "power returned:"
puts result
puts

if result == "on"
  puts "PASS!"
else
  puts "F"
end
puts

result = tv.volume

puts "volume returned:"
puts result
puts

if result == 4
  puts "PASS!"
else
  puts "F"
end
puts

result = tv.channel

puts "channel returned:"
puts result
puts

if result == 'channel'
  puts "PASS!"
else
  puts "F"
end




# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)