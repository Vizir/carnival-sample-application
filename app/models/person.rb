class Person < ActiveRecord::Base
  include Carnival::ModelHelper

  has_many :photos
  has_many :addresses
  has_many :phones, as: :phoneable

  accepts_nested_attributes_for :photos, :reject_if => lambda { |a| a[:image].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :addresses, :reject_if => lambda { |a| a[:address].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :phones, :reject_if => lambda { |a| a[:number].blank? }, :allow_destroy => true
end
