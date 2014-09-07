class CountriesController < Carnival::BaseAdminController

  private
  def permitted_params
    params.permit(country: [:name, :code])
  end
end
