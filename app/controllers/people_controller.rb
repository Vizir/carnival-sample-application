class PeopleController < Carnival::BaseAdminController

  private
  def permitted_params
    params.permit(person: [:name, :email, :bio, :birthday, 
                            photos_attributes:[:title, :image, :_destroy],
                            phones_attributes: [:phone_type_id, :number],
                            addresses_attributes: [:address, :number, :complement, :zipcode, :city_id, :state_id, :country_id, :address_type_id]
                          ])
  end
end