 puts "Hello, what is your name?"
 name = gets.chomp
 puts "What is your DOB?"
 dob = gets.chomp

open('directory.txt', 'w') do |f|

  f.write "name: " + name + " DOB: " + dob

end