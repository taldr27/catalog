require_relative '../src/music_album'

describe 'Testing music_album' do
  context 'Creating a new music_album ' do
    new_music_album = MusicAlbum.new(true, 'Publisher1', 'Fiction', 'Author', 'Gift', '1990-11-11')

    it 'Check if is an instance of music_album' do
      expect(new_music_album).to be_instance_of(MusicAlbum)
    end

    it 'returns the on spotify' do
      expect(music_album.on_spotify).to eq true
    end

    it "Publisher of the created music_album should be 'Publisher1'" do
      expect(new_music_album.publisher).to eql 'Publisher1'
    end

    it "Date of the created music_album should be '1990-11-11'" do
      expect(new_music_album.publish_date).to eql '1990-11-11'
    end

    it "Label of the created music_album should be 'Gift'" do
      expect(new_music_album.label).to eql 'Gift'
    end

    it "Can be archived method should be true'" do
      expect(new_music_album.can_be_archived?).to eql true
    end
  end
end
