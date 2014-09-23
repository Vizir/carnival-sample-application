class Tag < ActiveRecord::Base
  include Carnival::ModelHelper
  
  has_and_belongs_to_many :posts

end
