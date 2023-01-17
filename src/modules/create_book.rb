require_relative './show_labels'
require_relative '../book'
module CreateBook
  def add_book
    print 'Publisher: '
    publisher = gets.chomp
    print 'Cover State (good OR bad): '
    cover_state = gets.chomp
    # Wait for student 2! and show all genres
    print 'Genre: '
    genre = gets.chomp
    print 'Author: '
    author = gets.chomp
    puts 'Choose a label (Number): '
    list_all_labels
    index_label = gets.chomp.to_i
    selected_label = @labels[index_label]
    print 'Date (Year/month/day): '
    date = gets.chomp
    book = Book.new(publisher, cover_state, genre, author, selected_label, date)
    @books.push({
      'publisher' => book.publisher,
      'cover_state' => book.cover_state,
      'genre' => book.genre,
      'author' => book.author,
      'selected_label' => book.selected_label,
      'date' => book.date
      })
    p @books
    puts 'Book succesfully created!'
  end
end
