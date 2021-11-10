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
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurants_path(params[:id])
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurant_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
