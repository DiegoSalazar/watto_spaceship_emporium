class Product < ActiveRecord::Base
  has_many :images
  accepts_nested_attributes_for :images
  store :tech_specs
  default_scope { order :name }
  before_save :clear_blank_images

  def main_image_url
    main_image.try :url, :original
  end

  def thumbnail_url
    main_image.try(:url, :small) || '/images/stock/TIE_Fighter_Render.png'
  end

  def main_image
    images.first.try :image
  end

  private

  def clear_blank_images
    images.reject { |i| i.image_file_name.blank? }
  end
end
