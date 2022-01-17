def prompt
  puts "Say something:"
end

def generate_echo(user_input)
  if user_input == "exit"
    puts "Goodbye!"
  else 
    puts "#{date} | #{time} | You said: '#{user_input}'!"
  end
end

def date
  "#{Time.now.strftime("%F")}"
end

def time
  "#{Time.now.strftime("%H:%M")}"
end

while true do
  prompt
  user_input = gets.chomp 
  generate_echo(user_input)
  break if user_input == 'exit'
end