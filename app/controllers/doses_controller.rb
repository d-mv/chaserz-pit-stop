# frozen_string_literal: true

class DosesController < ApplicationController

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all
  end

  def create
    dose = Dose.new(dose_params)
    dose.cocktail_id = params[:cocktail_id]
    if dose.save
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
