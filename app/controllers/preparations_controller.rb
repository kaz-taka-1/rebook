class PreparationsController < ApplicationController
  def index
    @book= Book.find(params[:book_id])
    @preparation=Preparation.includes(:book)
    binding.pry
  end

  def new
    @book=Book.find(params[:book_id])
    @preparation=Preparation.new
    if Preparation.exists?(book_id:@book.id)
      redirect_to book_path(@book.id)
    end

  end

  def create
    @preparation=Preparation.new (preparation_params)
    # binding.pry
    if @preparation.save
      redirect_to book_preparations_path(@preparation.book_id)
    else
      render :new
    end
  end

  # def show
  # end
  # def edit
  #   @book = book.find(params[:book_id])

  # end

  # def update
  #   @preparation=Preparation.news (preparation_params)
  #   if @preparation.save
  #     redirect_to book_preparations_path(@book.id)
  #   else
  #     render :edit
  #   end
  # end
  def preparation_params
    # binding.pry
    params.require(:preparation).permit(:reason, :get_ability, :status, :prior_knowledge,:unknown).merge(book_id:params[:book_id])
  end

end
