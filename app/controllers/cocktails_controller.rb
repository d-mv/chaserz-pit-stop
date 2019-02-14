# frozen_string_literal: true

class CocktailsController < ApplicationController
  before_action :all

  def all
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    byebug
    @cocktail = Cocktail.new(cocktail_params)
    # byebug
#     uploader = PhotoUploader.new
#     uploader.store!(my_file)

# uploader.retrieve_from_store!('my_file.png')
    if @cocktail.save
      redirect_to cocktails_path
    else
      redirect_to  fallback_location: @cocktail
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = @cocktail.doses
    # byebug
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      redirect_back fallback_location: @cocktail
    end
  end

  def destroy
    cocktail = Cocktail.find(params[:id])
    cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
