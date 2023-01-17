require_relative '../src/genre'
describe 'Testing Genre' do
  context 'Creating new Genre' do
    new_genre = Genre.new('Gift')

    it 'Check if is an instance of Genre' do
      expect(new_genre).to be_instance_of(Genre)
    end

    it "Name of the created genre should be 'Gift'" do
      expect(new_genre.name).to eql 'Gift'
    end
  end
end
