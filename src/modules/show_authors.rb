module ListAuthors
  def list_all_authors
    if @authors.empty?
      puts 'There\'s no authors added yet!'
    elsif @authors.length >= 1
      @authors.each { |i| puts %(ID: "#{i['id']}" First Name: #{i['first_name']} Last Name: #{i['last_name']}) }
    end
  end
end
