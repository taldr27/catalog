require_relative '../src/label'
describe 'Testing Label' do
  context 'Creating new Label' do
    new_label = Label.new('Gift', 'Black')

    it 'Check if is an instance of Label' do
      expect(new_label).to be_instance_of(Label)
    end

    it "Title of the created label should be 'Gift'" do
      expect(new_label.title).to eql 'Gift'
    end

    it "Color of the created label should be 'Black'" do
      expect(new_label.color).to eql 'Black'
    end
  end
end
