# might need this? keep here just in case
# require 'carrierwave/orm/activerecord'

class Board < ActiveRecord::Base
  attr_accessible :name, :user_id, :image
  validates :name, presence: true
  validates :user_id, presence: true
  serialize :images, Array
  mount_uploader :image, ImageUploader
end