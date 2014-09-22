class Comment < ActiveRecord::Base
  include Carnival::ModelHelper
  
  belongs_to: post

end
