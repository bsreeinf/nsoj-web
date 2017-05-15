ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      # column do
      #   panel "Recent Gallery Images" do
      #     ul do
      #       Gallery.limit(5).map do |gallery|

      #         li link_to(gallery.title, admin_gallery_path(gallery))
      #       end
      #     end
      #   end
      # end

      # column do
      #   panel "Info" do
      #     para "Welcome to ActiveAdmin."
      #   end
      # end

      # column do
      #   panel "Recent Gallery Images" do
                 
      #               table_for Gallery.order("created_at desc").limit(3) do
      #                 column :title 
      #                 column :image do |gallery|
      #                   link_to image_tag(gallery.image.url(:thumb)), [:admin, gallery]
      #                 end
      #                 column :created_at
      #               end
      #               strong { link_to "View Gallery", admin_galleries_path }
              
      #   end
      # end


    end
  end # content


end
