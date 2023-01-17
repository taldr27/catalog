module ListMusicAlbum
  def list_all_music_albums
    if @music_album.empty?
      puts 'There\'s no books added yet!'
    elsif @music_album.length >= 1
      @music_album.each { |i| puts %(Publisher: "#{i['publisher']}" Author[ID]: #{i['author']}) }
    end
  end
end
