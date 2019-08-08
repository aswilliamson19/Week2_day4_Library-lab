require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../library')
require_relative('../book')


class LibraryTest < MiniTest::Test

  def setup
    @customer1 = Customer.new('Amanda', [])
    @library = Library.new('Edinburgh Library', [])
    @book1 = Book.new('2001: A Space Odyssey')
    @book2 = Book.new('1984')
  end

  def test_library_name
    assert_equal('Edinburgh Library', @library.name)
  end

  def test_catalogue__empty
    assert_equal([], @library.catalogue)
  end

  def test_catalogue__not_empty
    @library1 = Library.new('Edinburgh Library', [@book1])
    assert_equal([@book1], @library1.catalogue)
  end

  def test_catalogue_increase
    assert_equal(['2001: A Space Odyssey'], @library.catalogue_increase(@book1))
  end

  def test_catalogue_decrease
    library2 = Library.new('Edinburgh Library', [@book1, @book2])
    library2.catalogue_decrease(@book2)
    assert_equal([@book1], library2.catalogue)
  end

  def test_library_can_lend_book_to_customer
    library2 = Library.new('Edinburgh Library', [@book1, @book2])
    library2.lend_book(@customer1, @book2)
    assert_equal(1, @customer1.borrowed_books.length)
    assert_equal([@book1], library2.catalogue)
  end

end
