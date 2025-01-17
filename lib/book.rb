class Book
  attr_reader :title,
              :author_first_name,
              :author_last_name,
              :publication_date

  def initialize(info)
    @title = info[:title]
    @author_first_name = info[:author_first_name]
    @author_last_name = info[:author_last_name]
    @publication_date = info[:publication_date]

  end

  def author
    @author = @author_first_name +" "+ @author_last_name
  end

  def publication_year
    publication_date = @publication_date.split(",")
    publication_year_info = publication_date[1].strip
  end
end
