require_relative './item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(on_spotify, *args)
    super(*args)
    @on_spotify = true
  end

  def can_be_archived?
    true if @archived || @cover_state == 'bad' # move_to_archive??
  end
end
music_album = MusicAlbum.new(true, 'genre', 'author', 'label', 'publish_date')
p music_album