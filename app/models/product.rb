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

  def image_urls
    images.map { |i| i.image.url :original }.reverse
  end

  def to_param
    "#{id}-#{name.parameterize}"
  end

  private

  def clear_blank_images
    self.images = images.reject { |i| i.image.blank? }
  end
end
