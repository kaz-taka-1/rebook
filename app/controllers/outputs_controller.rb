class OutputsController < ApplicationController
  def new
    @book=Book.find(params[:book_id])
    @output=Output.new
  end
  def create
    @book=Book.find(params[:book_id])
    @output=Output.new(output_params)
    if @output.save
      redirect_to book_path(@book.id)
    else
      render :new
    end
  end

  def output_params
    params.require(:output).permit(:text).merge(book_id:params[:book_id])
  end
end
