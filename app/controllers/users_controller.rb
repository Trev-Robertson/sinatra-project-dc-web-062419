# frozen_string_literal: true

class UsersController < Sinatra::Base
  set :views, 'app/views/users'
  set :method_override, true

  get '/users' do
    @users = User.all
    erb :index
  end

  get '/users/new' do
    erb :new
  end

  post '/users' do
    user = User.find_or_create_by(name: params[:name])

    redirect "/users/#{user.id}"
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :show
  end

  get '/users/:id/edit' do
    @user = User.find(params[:id])
    erb :edit
  end

  patch '/users/:id' do
    user = User.find(params[:id])
    user.update(name: params[:name])
    redirect "/users/#{user.id}"
  end

  delete '/users/:id' do
    user = User.find(params[:id])
    user.destroy
    redirect '/users'
  end
end
