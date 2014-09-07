class PhonePresenter < Carnival::BaseAdminPresenter
  field :id,
    actions: [:index, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :equal}
  field :phone_type,
    actions: [:index, :new, :edit, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :equal}
  field :number,
    actions: [:index, :new, :edit, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :like}
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