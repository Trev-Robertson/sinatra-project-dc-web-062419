# frozen_string_literal: true

class RestaurantsController < Sinatra::Base
  set :views, 'app/views/restaurants'
  set :method_override, true

  get '/restaurants' do
    @restaurants = Restaurant.all
    erb :index
  end

  get '/restaurants/new' do
    erb :new
  end

  post '/restaurants' do
    restaurant = Restaurant.find_or_create_by(name: params[:name], rating: params[:rating], address: params[:address])

    redirect "/restaurants/#{restaurant.id}"
  end

  get '/restaurants/:id' do
    @users = User.all
    @restaurant = Restaurant.find(params[:id])
    erb :show
  end

  get '/restaurants/:id/edit' do
    @restaurant = Restaurant.find(params[:id])
    erb :edit
  end

  patch '/restaurants/:id' do
    restaurant = Restaurant.find(params[:id])
    restaurant.update(name: params[:name], rating: params[:rating], address: params[:address])
    redirect "/restaurants/#{restaurant.id}"
  end

  delete '/restaurants/:id' do
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy
    redirect '/restaurants'
  end

  post '/adduserto' do
    user = User.find(params[:user_id])
    restaurant = Restaurant.find(params[:restaurant_id])

    if !user.restaurants.include?(restaurant)
      user.restaurants << restaurant
    end
    redirect "/restaurants/#{restaurant.id}"
  end
end
