class Country < ActiveRecord::Base
  include Carnival::ModelHelper

  has_many :states
  has_many :cities
  has_many :addresses
  has_many :people, :through => :addresses

  has_attached_file :flag, styles: { medium: '640x480>', thumb: '160x120>'  }, default_url: 'missing.png'

  validates_attachment :flag, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
