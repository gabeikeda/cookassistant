class API::IngredientsController < ApplicationController
  before_action :set_recipe
  before_action :set_ingredient, only: [:show, :update, :destroy]

  # GET /ingredients
  def index
    if @recipe
      @ingredients = @recipe.ingredients
      if @ingredients.present?
        render json: @ingredients, status: :ok
      else
        render json: { message: "\"#{@recipe.name}\" doesn't have any ingredients." }, status: :ok
      end
    else
      render json: { message: 'Recipe does not exist' }, 
             status: :unprocessable_entity
    end
  end

  # GET /ingredients/1
  def show
    render json: @ingredient
  end

  # POST /ingredients
  def create
    @ingredient = Ingredient.new(ingredient_params)

    if @ingredient.save
      render json: @ingredient, status: :created, location: @ingredient
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ingredients/1
  def update
    if @ingredient.update(ingredient_params)
      render json: @ingredient
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ingredients/1
  def destroy
    @ingredient.destroy
  end

  private

  def set_recipe
    @recipe = Recipe.find_by(name: params[:name])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def ingredient_params
    params.require(:ingredient).permit(:name, :measurement, :recipe_id)
  end
end
