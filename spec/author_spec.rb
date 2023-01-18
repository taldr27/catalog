require_relative '../src/author'
describe 'Testing Author' do
  context 'Creating a new Author testing' do
    new_author = Author.new('FirstName', 'LastName')
    new_item = Item.new('Fiction', 'Author1', 'Gift', '1990-12-11')

    it 'Check if is an instance of Author' do
      expect(new_author).to be_instance_of(Author)
    end

    it "First name of the created author should be 'FirstName'" do
      expect(new_author.first_name).to eql 'FirstName'
    end

    it "Last name of the created author should be 'LastName'" do
      expect(new_author.last_name).to eql 'LastName'
    end

    it 'Item array should starts empty' do
      expect(new_author.items).to eq([])
    end

    it 'Should add an item to the items array' do
      new_author.add_item(new_item)
      expect(new_author.items).to include(new_item)
    end
  end
end
