class PostsController < Carnival::BaseAdminController

  private

  def permitted_params
    params.permit(post: 
      [:title, :text, :status, :user_id, :comment_id, :file_ids, :files_attributes =>[:id, :file, :_destroy])
  end
end