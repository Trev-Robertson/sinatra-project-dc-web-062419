# frozen_string_literal: true

class UserRestaurant < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
end
