Decidim.menu :menu do |menu|
  menu.add_item :contact, # String or symbol to uniquely define the menu
              t("menu.contact"),
              Rails.application.routes.url_helpers.new_contact_path,
                position: 8
                #active: # Optional
end

Decidim.menu :admin_menu do |menu|
  menu.add_item :contact,
                I18n.t("menu.contact", scope: "decidim.admin"),
                Rails.application.routes.url_helpers.contacts_path,
                icon_name: "envelope-closed",
                position: 8,
                active: [%w(
                  decidim/admin/dashboard
                  decidim/admin/metrics
                ), []]
end
