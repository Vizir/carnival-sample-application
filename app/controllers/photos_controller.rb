class PhotosController < Carnival::BaseAdminController

  private
  def permitted_params
    params.permit(photo: [:title, :image, :user_id])
  end
end