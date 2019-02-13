# frozen_string_literal: true

class DosesController < ApplicationController

  def add_ingredients
    @cocktail = Cocktail.find(params[:id])
    @ingredients = Ingredient.all
    @dose = Dose.new
  end

  def create
    dose = Dose.new(dose_params)
    dose.cocktail_id = params[:cocktail_id]
    if dose.save
      # redirect_to cocktail_path(params[:restaurant_id])
      puts 'dose.saved'
      redirect_to "/cocktails/#{params[:cocktail_id]}"
    else
      puts 'dose not saved'
      redirect_back fallback_location: @cocktail
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
