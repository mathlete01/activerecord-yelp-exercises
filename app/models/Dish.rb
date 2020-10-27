class Dish < ActiveRecord::Base
  has_many :joins
  has_many :tags, through: :joins
  belongs_to :restaurant
end