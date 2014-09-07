class Photo < ActiveRecord::Base
  belongs_to :person

  has_attached_file :image, styles: { medium: '640x480>', thumb: '160x120>'  }, default_url: 'missing.png'

  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
