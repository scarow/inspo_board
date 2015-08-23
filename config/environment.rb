# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
InspoBoard::Application.initialize!
require 'carrierwave/orm/activerecord'
