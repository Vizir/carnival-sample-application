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
  field :flag,
    actions: [:index, :new, :edit, :show]
  field :updated_at,
    actions: [:show, :csv, :pdf],
    sortable: true,
    advanced_search: {operator: :between}
  field :created_at,
    actions: [:show, :csv, :pdf],
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
