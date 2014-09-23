class PostFile < ActiveRecord::Base
  include Carnival::ModelHelper
  
  belongs_to :post
  has_attached_file :file

  validates_attachment :file, :size => { :in => 0..10.kilobytes }

end
