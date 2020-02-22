require 'open-uri'
require 'json'

class PagesController < ApplicationController
  def home
    @styles = Style.all.map { |style| style.name }
    @query
  end

  def get_ingredients
    style = Style.find_by_name(params[:style][:style])
    pairings = Pairing.where(style: style)
    @results = []
    pairings.each do |pairing|
      name = pairing.ingredient.name
      url = "https://api.spoonacular.com/recipes/findByIngredients?ingredients=#{name}&apiKey=6c0a90cde68b4d36b2f40ff2707996fe"
      result = open(url).read
      json = JSON.parse(result)
      raise
      results << json
    end

    redirect_to root_path
  end
end
