# require 'bundler'
# require "bundler/setup"
# require "sinatra/activerecord"
# Bundler.require

# ActiveRecord::Base.establish_connection
# (adapter: "sqlite3", database: 'db/development.db')

# Dir[File.join(File.dirname(__FILE__), "../bin", "*.rb")].each {|f| require f}

<<<<<<< HEAD
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'

=======
# require_all 'lib'
# require_all 'bin'
# require_all 'db'

require “bundler/setup”
require “sinatra/activerecord”
require ‘ostruct’
require ‘date’
Bundler.require
Dir[File.join(File.dirname(__FILE__), “../app/models”, “*.rb”)].each {|f| require f}
connection_details = YAML::load(File.open(‘./config/database.yml’))
ActiveRecord::Base.establish_connection(connection_details)
>>>>>>> 303678012571a2a9c47488d3bae3851d6fc6dc27
