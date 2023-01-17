require_relative '../data/read_data'
require_relative './modules/show_books'
require_relative './modules/show_labels'
require_relative './modules/create_book'
require_relative './modules/show_music_album'
require_relative './modules/show_genres'
require_relative './modules/create_music_albums'
require_relative './write_data'
require_relative './modules/show_games'
class App
  include ReadData
  include ListBooks
  include ListLabels
  include CreateBook
  include WriteData
  include ListMusicAlbum
  include ListGenre
  include CreateMusicAlbum
  include ListGames
  def initialize
    @menu_options = {
      '1' => method(:list_all_books),
      '2' => method(:list_all_music_albums),
      '3' => method(:list_all_games),
      '4' => method(:list_all_genres),
      '5' => method(:list_all_labels),
      '6' => method(:list_all_authors),
      '7' => method(:add_book),
      '8' => method(:add_music_album),
      '9' => method(:add_game)
    }
    @books = read_books
    @labels = read_labels
    @music_albums = read_music_album
    @genres = read_genre
    @games = read_games
  end

  # Showing the options here
  def run
    @menu_options.each_with_index do |option, index|
      puts "#{index + 1} - #{option[1].name.to_s.split('_').join(' ').capitalize}"
    end
    puts '0 - Exit'

    option = gets.chomp.to_s
    if @menu_options.key?(option)
      puts ''
      @menu_options[option].call
      puts ''
      run
    elsif option == '0'
      puts "\nThank you for using this app!\n\n"
    else
      puts "\nThat is not a valid option\n\n"
      run
    end
  end

  def list_all_authors
    p 'list_all_authors'
  end

  def add_game
    p 'add_game'
  end
end
