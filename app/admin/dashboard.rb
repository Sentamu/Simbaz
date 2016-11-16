ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
  #ActiveAdmin::Dashboards.build do

   #section "Recent Listings" do
    #table_for Listing.order("id desc").limit(15) do
       # column :id
        #column "The Name",:name do |listing|
           # link_to listing.name,[:admin,listing]
          #  end
      #  column :description
       # column :price
       # column :category, :sortable => :category
       # column :created_at
    #end
   # strong (link_to "Show All Listing")

end
