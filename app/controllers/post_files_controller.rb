class PostFilesController < Carnival::BaseAdminController


  private

  def permitted_params
    params.permit(:post_file[:file, :post_id])
  end
end
