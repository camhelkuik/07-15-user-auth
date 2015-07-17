require "pry"
require "sinatra"
set :sessions, true
require "sinatra/reloader"
require 'active_support/core_ext/object/blank'
require "bcrypt"

#SQL/databse
require "sqlite3"
require_relative "database_setup.rb"

#Models
require_relative "models/application.rb"
require_relative "models/location.rb"
require_relative "models/travel.rb"
require_relative "models/event.rb"
require_relative "models/user.rb"

#Controllers
require_relative "controllers/main.rb"
require_relative "controllers/applications.rb"
require_relative "controllers/locations.rb"
require_relative "controllers/travels.rb"
require_relative "controllers/events.rb"
require_relative "controllers/users.rb"