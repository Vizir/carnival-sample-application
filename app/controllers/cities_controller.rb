class CitiesController < Carnival::BaseAdminController

  private
  def permitted_params
    params.permit(city: [:name, :country_id, :state_id])
  end
end
