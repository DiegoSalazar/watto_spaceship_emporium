class Image < ActiveRecord::Base
  belongs_to :product
  has_attached_file :image, styles: {
    thumb: "200x200#",
    small: "350x350#",
    medium: "400x400"
  }
  validates_attachment_content_type :image, content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
end
