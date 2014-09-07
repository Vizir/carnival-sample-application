class AddressesController < Carnival::BaseAdminController

  private
  def permitted_params
    params.permit(address: [:address, :number, :complement, :zipcode, :city_id, :state_id, :country_id, :address_type_id, :person_id,])
  end
end
