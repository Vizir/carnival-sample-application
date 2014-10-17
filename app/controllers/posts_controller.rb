class PostsController < Carnival::BaseAdminController

  private

  def permitted_params
    params.permit(post: [:title, :text, :status, :cover, :post_file_ids, :post_files_attributes => [:id, :post_file_ids, :_destroy, :file] ])
  end
end