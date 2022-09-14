class Author

  attr_reader :first_name,
              :last_name,
              :books,
              :write

  def initialize(author)
    @first_name = author[:first_name]
    @last_name = author[:last_name]
    @books = []
  end

  def name
    @name = @first_name +" "+ @last_name
  end

  def write(title, publication_date)
    book_info = {author_first_name: @first_name,
                  authors_last_name: @last_name,
                  title: title,
                  publication_date: publication_date}
      book = Book.new(book_info)
      add_book(book)
      return book
 end

 def add_book(book)
   @books << book
 end

end
