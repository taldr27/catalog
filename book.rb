require_relative './item'
class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state)
    super()
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    true if @archived || @cover_state == 'bad' # move_to_archive??
    input = Item.new('1', '1', '1', '1990-12-11')
    p input
  end
end
