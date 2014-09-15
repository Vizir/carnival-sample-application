class PhonePresenter < Carnival::BaseAdminPresenter
  field :id,
    actions: [:index, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :equal}
  field 'phone_type.name',
    actions: [:index, :show, :csv, :pdf],
    searchable: true,
    sortable: true,
    advanced_search: {operator: :equal}

  field :phone_type,
    actions: [:new, :edit]

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
  action :add_to_mobile,
          :remote => true,
          :method => 'POST',
          :show_func => :not_mobile?

  action :add_to_home,
          :remote => true,
          :method => 'POST',
          :show_func => :not_home?

  batch_action :add_all_to_mobile

  scope :mobile
  scope :home
  scope :all, default: true

  action :csv
  action :pdf
end
