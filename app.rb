class App
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
  end

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

  def list_all_books
    p 'list_all_books'
  end

  def list_all_music_albums
    p 'list_all_music_albums'
  end

  def list_all_games
    p 'list_all_games'
  end

  def list_all_genres
    p 'list_all_genres'
  end

  def list_all_labels
    p 'list_all_labels'
  end

  def list_all_authors
    p 'list_all_authors'
  end

  def add_book
    p 'add_book'
  end

  def add_music_album
    p 'add_music_album'
  end

  def add_game
    p 'add_game'
  end


end