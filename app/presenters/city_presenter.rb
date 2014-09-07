class CityPresenter < Carnival::BaseAdminPresenter
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
  field :country,
    actions: [:index, :new, :edit, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :equal}
  field :state,
    actions: [:index, :new, :edit, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :equal},
    depends_on: :country
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