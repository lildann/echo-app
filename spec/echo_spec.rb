require 'echo'
require 'timecop'

describe Echo do
  let(:echo) { Echo.new }

  it "should begin with a prompt" do
    expect { echo.prompt }.to output("Say something:\n").to_stdout
  end

  it "should output 'Goodbye!' if user inputs 'exit'" do
    expect { echo.generate_echo("exit") }.to output("Goodbye!\n").to_stdout
  end

  it "should create an echo summary from user input" do
    Timecop.freeze(Time.local(2018, 1, 9, 16, 26))
    expect { echo.generate_echo("hello, world") }.to output("2018-01-09 | 16:26 | You said: 'hello, world'!\n").to_stdout
  end

  it ".run_app should run the program" do
    expect(Echo.run_app).to eq(echo.prompt)
  end
end