require 'pry' 

# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip 

# puts say_hello(users_name)

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]



def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(songs)
  songs.each_with_index {|value, index|
  puts "#{index + 1}. #{value}"
  }
end



def play(songs)
  puts "Please enter a song name or number:"  
  user_input = gets.chomp 
  
  if songs.include?(user_input)
    puts "Playing #{user_input}"
  else if (1..9).include?(user_input.to_i)
    puts "Playing #{songs[user_input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end
end



def exit_jukebox
  puts "Goodbye"
end



def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip 
  if user_input == "help"
    help
  else if user_input == "list"
    list(songs)
  else if user_input == "play"
    play(songs)
  else if user_input == "exit"
    exit_jukebox
  else
    puts "Invalid input, please try again"
  end
end
end
end
end

  





