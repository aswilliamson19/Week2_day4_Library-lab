class Customer

  attr_reader :name
  attr_accessor :borrowed_books

  def initialize(name, borrowed_books)
    @name = name
    @borrowed_books = borrowed_books
  end

  def borrow_book(book)
    @borrowed_books.push(book) 
  end
end
