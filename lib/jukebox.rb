# Add your code here
require 'pry'

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  i = 0
  songs.each_with_index do |name, index|
    puts "#{index + 1}. #{name}"
    i += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  i = 0
  current_song = ""
  while songs[i]
    # binding.pry
      if  input == (i + 1).to_s
        current_song = songs[i]
        # puts "Playing #{songs[i]}"
        # binding.pry
      elsif  songs[i] == input
        current_song = songs[i]
        # puts "Playing #{songs[i]}"
        # binding.pry
      end
      i+=1
  end
  
  if current_song != ""
    puts "Playing #{current_song}"
  else
    puts "Invalid input, please try again"
  end
end
  
def exit_jukebox
  puts "Goodbye"
end
  
def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  
  if input != "exit"
    if input  == "help"
      help
    elsif input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    end
  end
    exit_jukebox
end
    
  
  
  
  
  
  
  
  