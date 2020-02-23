require 'open-uri'
require 'json'

class PagesController < ApplicationController
  before_action :set_style_list, only: [:home, :get_ingredients]

  def home
  end

  def recipes
    @style = Style.find_by_name(params[:style][:style])
    @recipes = Recipe.joins(:styles).where("styles.name = ?", @style.name)
  end

  private

  def set_style_list
    @style_list = Style.all.map { |style| style.name }
  end
end
