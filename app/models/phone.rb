class Phone < ActiveRecord::Base
  belongs_to :phone_type
  belongs_to :phoneable, polymorphic: true
end
