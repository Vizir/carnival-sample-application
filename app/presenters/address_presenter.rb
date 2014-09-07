class AddressPresenter < Carnival::BaseAdminPresenter
  field :id,
    actions: [:index, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :equal}
  field :person,
    actions: [:index, :new, :edit, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :equal}
  field :address_type,
    actions: [:index, :new, :edit, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :equal}
  field :address,
    actions: [:index, :new, :edit, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :like}
  field :number,
    actions: [:index, :new, :edit, :show, :csv, :pdf]
  field :complement,
    actions: [:index, :new, :edit, :show, :csv, :pdf]
  field :zipcode,
    actions: [:index, :new, :edit, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :like}
  field :country,
    actions: [:index, :new, :edit, :show, :csv, :pdf]
  field :state,
    actions: [:index, :new, :edit, :show, :csv, :pdf],
    depends_on: :country,
    sortable: true,
    advanced_search: {operator: :equal}
  field :city,
    actions: [:index, :new, :edit, :show, :csv, :pdf],
    depends_on: :state,
    sortable: true,
    advanced_search: {operator: :equal}
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