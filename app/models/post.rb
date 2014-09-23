class Post < ActiveRecord::Base
  include Carnival::ModelHelper
  
  belongs_to :user
  has_many :comments
  has_many :post_files
  has_and_belongs_to_many :tags

  accepts_nested_attributes_for :post_files, allow_destroy: true,
    reject_if: proc { |attributes| attributes['title'].blank? }

  ACTIVE = 1
  INACTIVE = 2

  STATUS = {ACTIVE => "Active", INACTIVE => "Inactive" }

end
