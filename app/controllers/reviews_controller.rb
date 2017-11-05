class ReviewsController < ApplicationController
  # def index
  # end
  # 
  # def show
  # end
  # 
  def new
  end

  def create
    review = Review.new( review_params )
    if review.save
    else
      flash[:errors] = review.errors.full_messages
    end
    redirect_to "/books/#{review.book_id}"
  end

  def edit
    @review = Review.find(params[:id])
  end
  
  def update
    @review = Review.find(params[:id])
    if @review.update( review_params )
      redirect_to "/books/#{@review.book_id}"
    else
      redirect_to "/reviews/#{params[:id]}/edit"
    end
  end

  def destroy
  end
  
  private
  def review_params
    params.require(:review).permit(:user_id, :book_id, :review)
  end
end
