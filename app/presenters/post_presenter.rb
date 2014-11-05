class PostPresenter < Carnival::BaseAdminPresenter
  
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

  field :cover,
    actions: [:new, :edit, :show],
    as: :admin_previewable_file
  
  field :text,
    actions: [:new, :edit, :show],
    as: :ckeditor

  field :status,
    actions: [:index, :new, :edit, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :equal}

  field :tags,
    actions: [:new, :show, :edit],
    nested_form: true,
    nested_form_modes: [:associate]
    
  field :post_files,
    actions: [:new, :show, :edit],
    nested_form: true,
    nested_form_modes: [:new],
    nested_form_allow_destroy: true

  field :updated_at,
    actions: [:show, :csv, :pdf],
    sortable: true,
    advanced_search: {operator: :between}

  field :created_at,
    date_filter: true,
    actions: [:index, :show, :csv, :pdf],
    sortable: true,
    advanced_search: {operator: :between}

  action :new
  action :edit
  action :show
  action :destroy
  action :pdf
  action :csv
  # index_as :list
  # index_as :table
  index_as :grid
end
