class City < ActiveRecord::Base
  include Carnival::ModelHelper

  belongs_to :country
  belongs_to :state
  has_many :addresses
  has_many :people, :through => :addresses

end