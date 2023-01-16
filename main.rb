require_relative './app'
def main
  system('cls') # for windows
  system('clear') # for linux
  puts '-----------------'
  puts 'Welcome!'
  puts '-----------------'
  App.new.run
end

main
