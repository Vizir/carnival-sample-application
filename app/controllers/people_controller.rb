class PeopleController < Carnival::BaseAdminController

  private
  def permitted_params
    params.permit(person: [:name, :email, :bio, :birthday, photos_attributes:[:title, :image, :_destroy]])
  end
end