class PreparationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @book= Book.find(params[:book_id])
    @preparation=Preparation.find_by(book_id:@book.id)
  end

  def new
    @book=Book.find(params[:book_id])
    @preparation=Preparation.new
  end

  def create
    @preparation=Preparation.new (preparation_params)
    if @preparation.save
      redirect_to book_path(@preparation.book_id)
    else
      render :new
    end
  end

  def edit
     @book = Book.find(params[:book_id])
     @preparation=Preparation.find_by(book_id:@book.id)
   end

  def update
    @book= Book.find(params[:book_id])
    @preparation=Preparation.find (params[:id])
    if @preparation.update(preparation_params)
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  private
  def preparation_params
    params.require(:preparation).permit(:reason, :get_ability, :status, :prior_knowledge,:unknown).merge(book_id:params[:book_id])
  end

end
