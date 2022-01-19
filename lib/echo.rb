class Echo
  def self.run_app
    echo = Echo.new
    while true do
      echo.prompt
      user_input = gets.chomp 
      echo.generate_echo(user_input)
      break if user_input == 'exit'
    end
  end

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
end