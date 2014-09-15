class CitiesController < Carnival::BaseAdminController
  def is_from_acre?
        
  end

  private
  def permitted_params
    params.permit(city: [:name, :country_id, :state_id])
  end
end
