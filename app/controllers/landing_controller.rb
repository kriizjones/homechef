class LandingController < ApplicationController
  def index
    @dishes = Dish.all
  end
end
