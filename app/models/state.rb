class State < ActiveRecord::Base
  include Carnival::ModelHelper

  belongs_to :country
  has_many :cities
  has_many :addresses
  has_many :people, :through => :addresses

end
