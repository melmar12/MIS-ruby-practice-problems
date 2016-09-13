 puts "Hello, what is your name?"
 name = gets.chomp
 puts "What is your DOB?"
 dob = gets.chomp

if File.exist?('directory.txt')
  File.open('directory.txt', 'a') do |f|
  f << "name: " + name + " dob: " + dob + "\n"
  f.close
  end
else
  File.open('directory.txt', 'w') do |f|
  f << "name: " + name + " dob: " + dob + "\n"
  f.close
  end
end

