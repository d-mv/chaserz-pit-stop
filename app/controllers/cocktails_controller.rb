# frozen_string_literal: true

class CocktailsController < ApplicationController
  before_action :all

  def all
    @cocktails = Cocktail.all
  end

  def index

  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = @cocktail.doses
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      # redirect_to cocktail_path(params[:restaurant_id])
      redirect_to '/cocktails/:id/add_ingredients'
    else
      redirect_back fallback_location: @cocktail
    end
  end

  

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
