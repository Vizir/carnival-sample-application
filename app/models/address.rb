class Address < ActiveRecord::Base
  belongs_to :city
  belongs_to :state
  belongs_to :country
  belongs_to :address_type
  belongs_to :person
end
