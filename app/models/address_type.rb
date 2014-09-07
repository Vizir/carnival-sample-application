class AddressType < ActiveRecord::Base
  include Carnival::ModelHelper
  has_many :addresses
end
