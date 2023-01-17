require_relative './show_music_album'
require_relative '../music_album'
module CreateMusicAlbum
  def add_music_album
    print 'Publisher: '
    publisher = gets.chomp
    print 'Cover State (Good OR Bad): '
    cover_state = gets.chomp
    print 'Genre: '
    genre = gets.chomp
    print 'Author: '
    author = gets.chomp
    puts 'Choose a label (Number): '
    list_all_labels
    index_label = gets.chomp.to_i
    label = @labels[index_label]
    print 'Date (Year/month/day): '
    publish_date = gets.chomp
    print 'on_spotify(true 0r false):'
    on_spotify = gets.chomp
    puts 'Book succesfully created!'
    music_album = MusicAlbum.new(publisher, cover_state, genre, author, label, publish_date, on_spotify)
    @music_albums.push({
                         'publisher' => music_album.publisher,
                         'cover_state' => music_album.cover_state,
                         'genre' => music_album.genre, # fix
                         'author' => music_album.author,
                         'selected_label' => music_album.label,
                         'publish_date' => music_album.publish_date,
                         'on_spotify' => music_album.on_spotify
                       })

    save_music_albums
  end
end
