class RestaurantsController < Sinatra::Base
set :views, "app/views/restaurants"
set :method_override, true

       


        get '/restaurants' do
         erb :index
        end

        get '/restaurants/new' do
            erb :new
        end



    
end