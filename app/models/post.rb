class Post < ActiveRecord::Base
  include Carnival::ModelHelper
  
  has_attached_file :cover
  
  belongs_to :user
  has_many :comments
  has_many :post_files
  has_and_belongs_to_many :tags

  validates :cover, :title, presence: true
  validates_attachment :cover, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  
  scope :to_tags, -> (tag_id){joins(:tags).where('tags.id' => tag_id)}

  accepts_nested_attributes_for :post_files, allow_destroy: true,
    reject_if: proc { |attributes| attributes['title'].blank? }

  accepts_nested_attributes_for :tags

  ACTIVE = 1
  INACTIVE = 2

  STATUS = {ACTIVE => "Active", INACTIVE => "Inactive" }

end
