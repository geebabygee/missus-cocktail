class ReviewsController < ApplicationController

  before_action :set_cocktail, only: [:new, :create]

  def new
    @review = Review.new
  end

  # answers the submit button
  def create
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def set_restaurant
    @cocktail = cocktail.find(params[:cocktail_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
