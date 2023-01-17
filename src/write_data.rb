require 'json'
module WriteData
  def save_books
    json_file = File.open('././data/books.json')
    JSON.parse(File.read(json_file))
    File.write('././data/books.json', @books.to_json)
  end
end