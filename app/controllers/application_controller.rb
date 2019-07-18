# frozen_string_literal: true

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set(:views, 'app/views')

  get '/' do
    client = Yelp::Fusion.client
    client.search('San Francisco')
  end
end
