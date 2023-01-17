require_relative '../src/book'
describe 'Testing book' do
  context 'Creating a new book' do
    new_book = Book.new('Publisher1', 'bad', 'Fiction', 'Author', 'Gift', '1990-11-11')

    it 'Check if is an instance of Book' do
      expect(new_book).to be_instance_of(Book)
    end

    it "Publisher of the created book should be 'Publisher1'" do
      expect(new_book.publisher).to eql 'Publisher1'
    end

    it "Date of the created book should be '1990-11-11'" do
      expect(new_book.publish_date).to eql '1990-11-11'
    end

    it "Label of the created book should be 'Gift'" do
      expect(new_book.label).to eql 'Gift'
    end

    it "Can be archived method should be true'" do
      expect(new_book.can_be_archived?).to eql true
    end
  end
end
