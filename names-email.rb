puts "Enter your email"
email = gets.chomp

if !email.include?('@')
  puts "Not and email."
  exit
end

File.read('directory-emails.txt').each_line do |l|
  if l.include? email
    l.slice! email
    l.slice! "name: "
    l.slice! "email:"
    puts "Hello " + l.capitalize
    exit
  end
end

puts "looks like you are not in the directory"