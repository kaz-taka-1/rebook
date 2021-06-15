class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_gate, except: [:index,:new,:create]
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

  def edit
    @book = Book.find(params[:id])
  end

  def update
    if @book.update(book_params)
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def show
    @book= Book.find(params[:id])
    if Preparation.exists?(book_id:@book.id)
      @preparation=Preparation.find_by(book_id:@book.id)
    end
    if Output.exists?(book_id:@book.id)
      @output=Output.find_by(book_id:@book.id)
    end
  end
  
  private
  def book_params
    params.require(:book).permit(:book_title, :author, :total_page, :image).merge(user_id: current_user.id)
  end

  def set_gate
    @book = Book.find(params[:id])
    redirect_to books_path if current_user.id != @book.user_id 
  end
end
