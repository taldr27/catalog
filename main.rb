require_relative './src/app'
def main
  system('cls') # for windows
  system('clear') # for linux
  puts '-----------------'
  puts 'Welcome!'
  puts '-----------------'
  App.new.run
end

main
