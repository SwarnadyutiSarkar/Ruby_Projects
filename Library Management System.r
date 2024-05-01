class Book
  attr_accessor :title, :author, :genre, :available

  def initialize(title, author, genre)
    @title = title
    @author = author
    @genre = genre
    @available = true
  end

  def borrow
    if @available
      @available = false
      puts "Book '#{title}' by #{author} has been borrowed."
    else
      puts "Book '#{title}' is not available."
    end
  end

  def return_book
    if @available
      puts "Book '#{title}' is already available."
    else
      @available = true
      puts "Book '#{title}' has been returned."
    end
  end
end

class Library
  def initialize
    @books = []
  end

  def add_book(title, author, genre)
    book = Book.new(title, author, genre)
    @books << book
    puts "Book '#{title}' by #{author} has been added to the library."
  end

  def borrow_book(title)
    book = @books.find { |book| book.title == title }
    if book
      book.borrow
    else
      puts "Book '#{title}' not found in the library."
    end
  end

  def return_book(title)
    book = @books.find { |book| book.title == title }
    if book
      book.return_book
    else
      puts "Book '#{title}' not found in the library."
    end
  end
end

# Example usage
library = Library.new

library.add_book("Harry Potter and the Sorcerer's Stone", "J.K. Rowling", "Fantasy")
library.add_book("To Kill a Mockingbird", "Harper Lee", "Fiction")

library.borrow_book("Harry Potter and the Sorcerer's Stone")
library.borrow_book("To Kill a Mockingbird")

library.return_book("To Kill a Mockingbird")
library.return_book("Harry Potter and the Sorcerer's Stone")
