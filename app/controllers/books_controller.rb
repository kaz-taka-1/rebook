class BooksController < ApplicationController
  def index
    @book = Book.includes(:user).order("created_at DESC")
  end

  def new
    @book=Book.new
  end
  def create

    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end
  

  def book_params
    params.require(:book).permit(:book_title, :author, :total_page, :image).merge(user_id: current_user.id)
  end
end
