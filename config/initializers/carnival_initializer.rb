Carnival.configure do |config|

  Rails.application.config.assets.precompile += %w( carnival/* )
  config.menu =
  {
    :Post => {
      :label => "menu.post",
      :class => "",
      :link => "#",
      :subs => [
        {
          :label => "menu.post",
          :class => "countries",
          :link => "/posts"
        },
        {
          :label => "menu.tags",
          :class => "tags",
          :link => "/tags"
        },
        {
          :label => "menu.comment",
          :class => "comments",
          :link => "/comments"
        }
      ]
    }
  }
  # Custom CSS Files
  # config.custom_css_files = ["ckeditor/contents.css"]

  # Custom Javascript Files
  config.custom_javascript_files = ["ckeditor/init"]

  # Determine root action
  # config.root_action = 'carnival/admin_users#index'
end
