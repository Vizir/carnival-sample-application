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
  field 'country.name',
    actions: [:index, :show, :csv, :pdf],
    searchable: true,
    sortable: true
  field :country,
    actions: [:new, :edit],
    advanced_search: {operator: :equal}


  field 'state.name',
    actions: [:index, :show, :csv, :pdf],
    searchable: true,
    sortable: true

  field :state,
    actions: [:new, :edit],
    advanced_search: {operator: :equal},
    depends_on: :country

  field :updated_at,
    date_filter: true,
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
  action :pdf
  action :csv
  
end
