require 'test_helper'

class Api::RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_recipe = api_recipes(:one)
  end

  test "should get index" do
    get api_recipes_url, as: :json
    assert_response :success
  end

  test "should create api_recipe" do
    assert_difference('Api::Recipe.count') do
      post api_recipes_url, params: { api_recipe: { calories: @api_recipe.calories, cook_time: @api_recipe.cook_time, description: @api_recipe.description, meal_type: @api_recipe.meal_type, name: @api_recipe.name, serving_size: @api_recipe.serving_size } }, as: :json
    end

    assert_response 201
  end

  test "should show api_recipe" do
    get api_recipe_url(@api_recipe), as: :json
    assert_response :success
  end

  test "should update api_recipe" do
    patch api_recipe_url(@api_recipe), params: { api_recipe: { calories: @api_recipe.calories, cook_time: @api_recipe.cook_time, description: @api_recipe.description, meal_type: @api_recipe.meal_type, name: @api_recipe.name, serving_size: @api_recipe.serving_size } }, as: :json
    assert_response 200
  end

  test "should destroy api_recipe" do
    assert_difference('Api::Recipe.count', -1) do
      delete api_recipe_url(@api_recipe), as: :json
    end

    assert_response 204
  end
end
