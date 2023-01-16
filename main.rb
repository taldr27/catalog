require_relative './app.rb'
def main
    system('cls') # for windows
    system('clear') # for linux
    puts '-----------------'
    puts 'Welcome!'
    puts '-----------------'
    app = App.new.run
end

main
