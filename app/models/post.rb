class Post < ActiveRecord::Base
  include Carnival::ModelHelper
  
  belongs_to: user
  has_many: comments
  has_many: files
  has_and_belongs_to_many: tags

  accepts_nested_attributes_for :files, allow_destroy: true, reject_if: proc { |attributes| attributes['title'].blank? }

end
