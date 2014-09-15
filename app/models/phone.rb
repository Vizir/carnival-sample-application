class Phone < ActiveRecord::Base
  scope :mobile, lambda{joins(:phone_type).where("phone_types.name = 'Mobile'")}
  scope :home, lambda{joins(:phone_type).where("phone_types.name = 'Home'")}

  belongs_to :phone_type
  belongs_to :phoneable, polymorphic: true

  def not_mobile?
    self.phone_type.name != 'Mobile' 
  end
  def not_home?
    self.phone_type.name != 'Home' 
  end
end
