class Country < ActiveRecord::Base
  include Carnival::ModelHelper

  has_many :states
  has_many :cities
  has_many :addresses
  has_many :people, :through => :addresses

  accepts_nested_attributes_for :states, :allow_destroy => true
  scope :brasil, -> {where(:code => "BR")}

end
