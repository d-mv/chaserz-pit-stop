# frozen_string_literal: true

class IngredientsController < ApplicationController
  before_action :all

  def all
    @ingredients = Ingredient.order(:name, asc)
  end

  def index; end
end
