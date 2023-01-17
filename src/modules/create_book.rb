require_relative './show_labels'
require_relative '../book'
module CreateBook
  def add_book
    print 'Publisher: '
    publisher = gets.chomp
    print 'Cover State (Good OR Bad): '
    cover_state = gets.chomp
    # Wait for student 2! and show all genres
    print 'Genre: '
    genre = gets.chomp
    print 'Author: '
    author = gets.chomp
    puts 'Choose a label (Number): '
    list_all_labels
    index_label = gets.chomp.to_i
    label = @labels[index_label]
    print 'Date (Year/month/day): '
    publish_date = gets.chomp
    book = Book.new(publisher, cover_state, genre, author, label, publish_date)
    @books.push({
                  'publisher' => book.publisher,
                  'cover_state' => book.cover_state,
                  'genre' => book.genre, # fix
                  'author' => book.author,
                  'selected_label' => book.label,
                  'publish_date' => book.publish_date
                })

    save_books
    puts 'Book succesfully created!'
  end
end
