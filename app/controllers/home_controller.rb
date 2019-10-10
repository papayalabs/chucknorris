class HomeController < ApplicationController
  def index
    chuck = Api::Chuck.new
    @categories = chuck.categories
    puts 'categories'
    puts @categories
  end
end
