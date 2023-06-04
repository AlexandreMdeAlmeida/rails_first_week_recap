class ReviewsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @review = Review.new
  end

  def create
    @post = Post.find(params[:post_id]) # It finds a specific Post record from the database based
    # on the post_id parameter provided in the request and assigns it to the @post instance variable.
    @review = Review.new(review_params) # It creates a new instance of the Review model and assigns it
    # to the @review instance variable. The data for the new review is obtained from the review_params
    # method.
    @review.post = @post # associates the @post instance variable with the post attribute of the
    # @review instance, establishing the relationship between the review and the post.
    if @review.save
      redirect_to post_path(@post)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
