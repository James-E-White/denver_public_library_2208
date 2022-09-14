class Library
  attr_reader :name,
              :books,
              :authors
  def initialize(name)
   @name = name
   @books = []
   @authors = []
  end


  def add_author(author)
    author_info = {author_first_name: @first_name,
                  authors_last_name: @last_name}
      author = Author.new(author_info)
     authors << add_author
  end
end
