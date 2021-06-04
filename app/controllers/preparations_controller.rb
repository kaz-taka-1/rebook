class PreparationsController < ApplicationController
  
  def new
    @book=Book.find(params[:book_id])
    @preparation=Preparation.new
  end

  def create
    @preparation=Preparation.new (preparation_params)
    if @preparation.save
      redirect_to book_preparations_path(@book.id)
    else
      render :new
    end
  end

  def preparation_params
    params.require(:preparation).permit(:reason, :get_ability, :status, :prior_knowledge,:unknown).merge(book_id:params[:book_id])
  end

end
