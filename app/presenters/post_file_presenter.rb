class PostFilePresenter < Carnival::BaseAdminPresenter

  field :id,
    actions: [:index, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :equal}

  field :title,
    actions: [:index, :new, :edit, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :like}
  
  field :file,
    actions: [:new, :edit, :show],
    as: :admin_previewable_file
  
  field :post,
    actions: [:new, :edit]

  action :new, target: :page
  action :edit
  action :show
  action :destroy
end