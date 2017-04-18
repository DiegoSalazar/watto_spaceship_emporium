class Product < ActiveRecord::Base
  has_many :images
  accepts_nested_attributes_for :images
  store :tech_specs, coder: JSON
  default_scope { order :name }

  def thumbnail_url
    images.first.try(:image).try(:url, :thumb) || '/images/stock/TIE_Fighter_Render.png'
  end
end
