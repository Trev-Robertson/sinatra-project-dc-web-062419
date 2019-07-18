class RestaurantsController < Sinatra::Base
set :views, "app/views/restaurants"
set :method_override, true

       


        get '/restaurants' do
           @restaurants = Restaurant.all
         erb :index
        end

        get '/restaurants/new' do
            erb :new
        end

         get '/restaurants/:id' do
            erb :show
        end


    
end