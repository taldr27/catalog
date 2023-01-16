require 'date'
class Item
  def initialize(genre, author, label, date)
    @id = Random.rand(1..1000)
    @genre = genre
    @author = author
    @label = label
    @publish_date = Date.parse(date)
    @archived = false
  end

  def can_be_archived?
    (Date.today - @publish_date) > 3652
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end

p Item.new('1', '1', '1', '1', '1990-12-11')
