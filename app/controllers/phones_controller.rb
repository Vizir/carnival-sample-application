class PhonesController < Carnival::BaseAdminController

  def add_to_mobile
    phone = Phone.find params[:id] 
    phone.phone_type = PhoneType.find_by_name 'Mobile'
    phone.save
    render json: phone
  end
  def add_to_home
    phone = Phone.find params[:id] 
    phone.phone_type = PhoneType.find_by_name 'Home'
    phone.save
    render json: phone
  end
  def add_all_to_mobile
    params[:batch_action_items].each do |id|
      phone = Phone.find id
      phone.phone_type = PhoneType.find_by_name 'Mobile'
      phone.save
    end
    render json: []
  end

  private
  def permitted_params
    params.permit(phone: [:phone_type_id, :number, :person_id])
  end
end
