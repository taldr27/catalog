require_relative './src/app'
def main
  system('cls') # for windows
  system('clear') # for linux
  puts '-----------------------------------------------------------'
  puts '
   |\/|     _ _ || _  __|_. _  _
   |  |\/  (_(_)||(/_(_ | |(_)| |
       /'
  puts '-----------------------------------------------------------'
  App.new.run
end

main
