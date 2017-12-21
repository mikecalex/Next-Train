trains = [2, 5, 7.5, 8.5, 9, 10, 11.5, 13.5, 14.5, 17, 18, 19, 24]

puts "What time are you leaving?"
time = gets.chomp.to_f

while true do
  if time > 0 && time < 24
    break
  else
    puts "I don't understand that time. Please try again"
    time = gets.chomp.to_f
  end
end

train_sort = []
train_index = []

trains.each_with_index do |train, index|
  if train > time
    train_sort << train
    train_index << (index + 1)
  end
end

if train_index.first < 13
  puts "\nYou should catch the ##{train_index.first} that leaves at #{train_sort.first}"
else
  puts "\nYou should catch the ##{train_index.first} that leaves at #{train_sort.first}"
  puts "\n***DON'T STOP...BELIEVIN'!***\n
  Just a small town girl
  Living in a lonely world
  She took the midnight train going anywhere
  Just a city boy
  Born and raised in South Detroit
  He took the midnight train going anywhere

  A singer in a smoky room
  A smell of wine and cheap perfume
  For a smile they can share the night
  It goes on and on and on and on

  Strangers waiting, up and down the boulevard
  Their shadows searching in the night
  Streetlights people, living just to find emotion
  Hiding, somewhere in the night."
end
