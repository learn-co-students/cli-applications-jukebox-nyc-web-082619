require 'pry'

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

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  if input.to_i.between?(1, 9)
      puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.include?(input) 
      puts "Playing #{input}"
  else 
      puts "Invalid input, please try again"
   end
end 

def list(songs)
  songs.each_with_index{|song, index| puts "#{index + 1}. #{song}"}
end 

def exit_jukebox 
  puts "Goodbye"
end

def run(songs) 
 input = true 
   while input 
   puts "Please enter a command:"
    input = gets.strip
  case input 
   when 'list'
      list(songs)
   when 'play'
      play(songs)
   when 'help'
      help  
   else 'exit'
      exit_jukebox
      break
   end
 end
end 

#$SONGS = [
#  "Phoenix - 1901",
#  "Tokyo Police Club - Wait Up",
#  "Sufjan Stevens - Too Much",
#  "The Naked and the Famous - Young Blood",
#  "(Far From) Home - Tiga",
#  "The Cults - Abducted",
#  "Phoenix - Consolation Prizes",
#  "Harry Chapin - Cats in the Cradle",
#  "Amos Lee - Keep It Loose, Keep It Tight"
#]
#
#def help 
#  puts "I accept the following commands:"
#  puts "- help : displays this help message"
#  puts "- list : displays a list of songs you can play"
#  puts "- play : lets you choose a song to play"
#  puts "- exit : exits this program"
#end
#
#def play(songs)
#  puts "Please enter a song name or number:"
#  input = gets.strip
#  if input.to_i.between?(1, 9)
#      puts "Playing #{$SONGS[input.to_i - 1]}"
#  elsif $SONGS.include?(input) 
#      puts "Playing #{input}"
#  else 
#      puts "Invalid input, please try again"
#   end
#end 
#
#def list(songs)
#  $SONGS.each_with_index{|song, index| puts "#{index + 1}. #{song}"}
#end 
#
#def exit_jukebox 
#  puts "Goodbye"
#end
#
#def run 
#  puts "Please enter a command:"
#  input = gets.strip
#    case input 
#    when 'exit'
#      exit_jukebox
#    when 'play'
#      play($SONGS)
#      run 
#    when 'help'
#      help 
#      run 
#    else 'list'
#      list($SONGS)
#      run 
#    end
#end 

