class Person < ActiveRecord::Base
  has_many :photos
  accepts_nested_attributes_for :photos, :reject_if => lambda { |a| a[:image].blank? }, :allow_destroy => true
end
