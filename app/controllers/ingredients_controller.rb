class IngredientsController < ApplicationController
  before_action :all

  def all
    @ingredients = Ingredient.all
  end

  def index
    
  end
end