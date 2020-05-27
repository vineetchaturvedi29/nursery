ActiveAdmin.register Plant do
   belongs_to :category, optional: true
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :price, :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at, :detail, :category_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at, :detail, :category_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
      f.inputs do
        f.input :category, as: :select
        f.input :name
        f.input :price
        f.input :detail
        f.input :avatar, as: :file, label: 'Image'
      end
      f.actions
    end
  
end
