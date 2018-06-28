class API::RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /api/recipes
  def information
    @recipe = Recipe.find_by(name: params[:name])
    if @recipe
      render json: @recipe, status: :ok
    else
      render json: {status: "Recipe does not exist"}, status: :unprocessable_entity
    end
  end
  # GET /api/recipes/1
  def show
    render json: @recipe
  end

  # POST /api/recipes
  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      render json: @recipe, status: :created, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/recipes/1
  def update
    if @recipe.update(api_recipe_params)
      render json: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/recipes/1
  def destroy
    @recipe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find_by(name: params[:name])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_params
      params.require(recipe).permit(:name, :meal_type, :cook_time, :calories, :serving_size, :description)
    end
end
