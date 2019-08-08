require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../library')
require_relative('../book')

class CustomerTest < MiniTest::Test

  def setup
    @customer1 = Customer.new('Amanda', [])
    @book1 = Book.new('2001: A Space Odyssey')
    @book2 = Book.new('1984')
  end

  def test_customer_name
    assert_equal('Amanda', @customer1.name)
  end

  def test_customer_borrowed_books__empty
    assert_equal([], @customer1.borrowed_books)
  end

  def test_customer_borrowed_books__not_empty
    customer2 = Customer.new('Robert', [@book1, @book2])
    assert_equal(2, customer2.borrowed_books.length)
  end

  def test_customer_can_borrow_a_book
    assert_equal([@book1], @customer1.borrow_book(@book1))
  end



end
