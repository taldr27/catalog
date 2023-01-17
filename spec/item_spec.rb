require_relative '../src/item'
describe 'Testing Item' do
  context 'Creating new Item' do
    new_item = Item.new('Fiction', 'Author1', 'Gift', '1990-12-11')

    it 'Check if is an instance of Item' do
      expect(new_item).to be_instance_of(Item)
    end

    it "Author of the created item should be 'Author1'" do
      expect(new_item.author).to eql 'Author1'
    end

    it "Published_date of the created item should be '1990-12-11'" do
      expect(new_item.publish_date).to eql '1990-12-11'
    end

    it "Can be archived method should be true'" do
      expect(new_item.can_be_archived?).to eql true
    end

    it "Move to archive method should be true'" do
      expect(new_item.move_to_archive).to eql true
    end
  end
end
