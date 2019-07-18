# frozen_string_literal: true

require_relative 'config/environment'

use UsersController
use RestaurantsController
run ApplicationController
