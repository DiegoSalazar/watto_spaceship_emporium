class Product < ActiveRecord::Base
  has_many :images
  store :tech_specs, coder: JSON
end
