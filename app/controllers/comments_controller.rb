class CommentsController < Carnival::BaseAdminController

  private

  def permitted_params
    params.permit(comment:[:comment, :approved])
  end
end