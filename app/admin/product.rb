ActiveAdmin.register Product do
  permit_params :name, :description, :avatar

  show do |product|
    attributes_table do
      row :name
      row :description
      row :avatar do
        image_tag(product.avatar)
      end
      active_admin_comments
    end
  end

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
