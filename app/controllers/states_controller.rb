class StatesController < Carnival::BaseAdminController

  private
  def permitted_params
    params.permit(state: [:name, :code, :country_id])
  end
end
