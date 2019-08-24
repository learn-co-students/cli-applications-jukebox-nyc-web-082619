def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def play(songs)
  puts "Please enter a song name or number:"
  answer = gets.strip
  
  if songs.include?(answer) 
    puts "Playing #{answer}" 
  elsif answer.to_i <= songs.length && answer.to_i > 0
    play_song = songs[answer.to_i-1]
    puts "Playing #{play_song}"
  else 
    puts "Invalid input, please try again"
  end
 
end


def list(songs) 
  songs.each_with_index do | value, index |
    puts "#{index+1}. #{value}"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs) 
  
  while true
    puts "Please enter a command: "
    answer = gets.strip
    
    case answer 
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      when "exit"   
        exit_jukebox
        break
    end
    
  end 
 
end