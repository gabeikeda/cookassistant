class API::RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /api/recipes
  def index
    @recipes = Recipe.all

    render json: @recipes, status: :ok
  end

  # GET /api/recipes/information
  def information
    if @recipe
      render json: @recipe, status: :ok
    else
      render status: :unprocessable_entity
    end
  end

  # GET /api/recipes/:id
  def show
    if @recipe
      render json: @recipe, status: :ok
    else
      render status: :unprocessable_entity
    end
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

  # PATCH/PUT /api/recipes/:id
  def update
    if @recipe&.update(recipe_params) 
      render json: @recipe, status: :ok
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/recipes/:id
  def destroy
    if @recipe&.destroy # same as @recipe && @recipe.method_name
      render json: { success: true }, status: :ok
    else
      render json: { success: false }, status: :unprocessable_entity
    end
  end

  private
  
  # Use callbacks to share common setup or constraints between actions.
  def set_recipe
    @recipe = if params[:name]
                Recipe.find_by(name: params[:name])
              else
                Recipe.find_by(id: params[:id])
              end
  end

  # Only allow a trusted parameter "white list" through.
  def recipe_params
    params.require(recipe).permit(:name, :meal_type, :cook_time, :calories, :serving_size, :description)
  end
end
