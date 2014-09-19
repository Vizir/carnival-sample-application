class CountryPresenter < Carnival::BaseAdminPresenter
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
  field :code,
    actions: [:index, :new, :edit, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :equal}
  field :updated_at,
    actions: [:index, :show, :csv, :pdf],
    sortable: true,
    advanced_search: {operator: :between}
  field :created_at,
    date_filter: true,
    actions: [:index, :show, :csv, :pdf],
    sortable: true,
    advanced_search: {operator: :between}
  field :states,
    actions: [:new, :edit],
    nested_form: true,
    nested_form_modes: [:new],
    nested_form_allow_destroy: true

  scope :all
  scope :brasil

  action :new
  action :edit
  action :show
  action :destroy
  action :pdf
  action :csv
end
