require_relative './item'
class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state, *args)
    super(*args)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    true if @archived || @cover_state == 'bad' # move_to_archive??
  end
end

# book1 = Book.new('1', 'bad', '1', '1', '1', '1990-11-11')
# p book1
