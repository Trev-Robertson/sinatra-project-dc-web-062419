# frozen_string_literal: true

class AddColumnsToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :address, :string
    add_column :restaurants, :rating, :integer
  end
end
