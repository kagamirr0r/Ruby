class Library
  def initialize
    @books = []
  end

  def <<(book)
    @books << book
  end

  def to_s
    puts "Library contents:"
    @books.join("\n")
  end
end

class Book
  attr_accessor :author, :title
  
  def initialize(args)
    @author = args[:author]
    @title = args[:title]
    args[:library] << self
  end

  def to_s
    "Title: " + @title + ", Author: " + @author
  end
  
end