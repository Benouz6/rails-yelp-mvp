class RestaurantsController < ApplicationController
  # Get restaurants to restaurants#index
  def index
    @restaurants = Restaurant.all
  end

  # Get restaurants to restaurants#show
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # Get '/resturants/new', to resturants#new, as: :new_restaurant
  def new
    @restaurant = Restaurant.new
  end

  def create
     @restaurant = Restaurant.new(restaurant_params)
     @restaurant.save
     redirect_to restaurants_path
  end
end
