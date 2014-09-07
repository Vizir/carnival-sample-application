class PersonPresenter < Carnival::BaseAdminPresenter
  field :id,
    actions: [:index, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :equal}
  field :name,
    actions: [:index, :new, :edit, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :like}
  field :email,
    actions: [:index, :new, :edit, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :equal}
  field :bio,
    actions: [:index, :new, :edit, :show, :csv, :pdf],
    as: :ckeditor, 
    input_html: { ckeditor: {toolbar: 'Full'} }
  field :birthday,
    actions: [:index, :new, :edit, :show, :csv, :pdf],
    sortable: true,
    advanced_search: {operator: :between}
  field :photos,
    actions: [:new, :edit, :show],
    nested_form: true, 
    nested_form_allow_destroy: true, 
    nested_form_modes: [:new]
  field :updated_at,
    actions: [:index, :show, :csv, :pdf],
    sortable: true,
    advanced_search: {operator: :between}
  field :created_at,
    actions: [:index, :show, :csv, :pdf],
    sortable: true,
    advanced_search: {operator: :between}

  action :new
  action :edit
  action :show
  action :destroy
end