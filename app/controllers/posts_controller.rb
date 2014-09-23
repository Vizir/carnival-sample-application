class PostsController < Carnival::BaseAdminController
  private

  def permitted_params
    params.permit(post: [:title, :text, :status])
  end
end