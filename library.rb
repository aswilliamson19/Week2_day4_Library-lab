class Library

  attr_reader :name
  attr_accessor :catalogue

  def initialize(name, catalogue)
    @name = name
    @catalogue = catalogue
  end

  def catalogue_increase(book)
    return @catalogue.push(book.name)
  end

  def catalogue_decrease(book)
     @catalogue.delete(book)
  end

  def lend_book(customer, book)
    customer.borrow_book(book)
    @catalogue.delete(book)
  end

end
