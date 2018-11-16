class CocktailsController < ApplicationController

  before_action :set_cocktail, only: [:show, :destroy, :edit, :update]

  def index
    if params[:query].present?
      @cocktails = Cocktail.where("name LIKE ?","%#{params[:query]}%")
    else
      @cocktails = Cocktail.all
   end
 end

 def show
 end

 def new
    @cocktail = Cocktail.new #a new Cocktail for the form
  end

  def create
    @cocktail = Cocktail.new(cocktail_params) # actually create the cocktail with the params,
    #what the user has filled in the form
    if @cocktail.save
      redirect_to cocktail_path(@cocktail) #or just @cocktail
                # the user wants to see the cocktail he created
              else
                render :new
              end
            end

            def edit
    #to render the form like new for create but we already have a cocktail so we find it
  end

  def update
    @cocktail.update(cocktail_params)
    redirect_to @cocktail
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
      #:photo
    end
end
