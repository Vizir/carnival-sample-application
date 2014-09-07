class PhonesController < Carnival::BaseAdminController

  private
  def permitted_params
    params.permit(phone: [:phone_type_id, :number, :person_id])
  end
end