require('minitest/autorun')
require('minitest/rg')
require_relative('../book')

class BookTest < MiniTest::Test

  def setup
    @book1 = Book.new('2001: A Space Odyssey')
  end

  def test_book_name
    assert_equal('2001: A Space Odyssey', @book1.name)
  end

end
