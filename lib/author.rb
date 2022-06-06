class Author
  attr_reader :first_name,
              :last_name,
              :name,
              :books

  def initialize(info)
    @first_name = info[:first_name]
    @last_name  = info[:last_name]
    @name       = first_name + " " + last_name
    @books      = []
  end

  def write(book_title, publish_date)
    book = Book.new({
      title: book_title,
      publication_date: publish_date,
      author_first_name: @first_name,
      author_last_name: @last_name})
    @books << book
    book
  end
end
