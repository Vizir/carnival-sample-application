class Country < ActiveRecord::Base
  include Carnival::ModelHelper

  has_many :states
  has_many :cities
  has_many :addresses
  has_many :people, :through => :addresses

end
