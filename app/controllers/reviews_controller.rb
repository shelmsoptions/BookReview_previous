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

  # def edit
  # end
  # 
  # def update
  # end

  def destroy
  end
  
  private
  def review_params
    params.require(:review).permit(:user_id, :book_id, :review)
  end
end
