class FilesController < Carnival::BaseAdminController


  private

  def permitted_params
    params.permit(:file[:file])
  end
end
