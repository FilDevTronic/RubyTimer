#A simple timer, written in Ruby

def timer(num) #Defube a method that acts as the timer, and takes a number as an argument
  start = Time.now #Set current time as a variable
  finish = start + num #Set end time as the current time variable + passed in argument (defaults to seconds)
  while Time.now < finish #Each second, check that the time right now is less than the end time set above
    sleep 1
    puts "tick tock" #put out this message in the console, every second that goes by
  end
  puts "Time's up!" #When the time right now is the same as the end time set above, put out this message in console
end

puts "How long should I set the timer for?" #Ask user to set length of timer

number = gets.chomp.to_i #Get user input and convert it to an integer, that becomes the argument passed in as a parameter for the defined Timer method above

puts "Say 'go' to start!" #Ask user to input the word to start the timer

input = gets.chomp #Get use input

if input == "go" #If the user types "go" then the timer runs with the previously entered number input
  timer(number)
else
  puts "Ok nevermind I guess" #if user enters anything else, the program puts out this message and ends.
end
