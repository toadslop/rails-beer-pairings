require 'open-uri'
require 'json'

class PagesController < ApplicationController
  before_action :set_style_list, only: [:home, :get_ingredients]

  def home
  end

  def recipes
    style = Style.find_by_name(params[:style][:style])
    pairings = Pairing.where(style: style)

    #this is for the final product uses too much so can't do anything more now
    # @results = []
    # pairings.each do |pairing|
    #   name = pairing.ingredient.name
    #   url = "https://api.spoonacular.com/recipes/findByIngredients?ingredients=#{name}&number=1&apiKey=6c0a90cde68b4d36b2f40ff2707996fe"
    #   result = open(url).read
    #   json = JSON.parse(result)
    #   @results << json
    # end
  end

  private

  def set_style_list
    @style_list = Style.all.map { |style| style.name }
  end
end
