ActiveAdmin.register FeatureBuilding do

  index do
    column :name
    column :address_1
    column :address_2
    column :city
    column :created_at
    default_actions
  end

  show title: :name do
    panel "Details" do
      attributes_table_for feature_building do
        row :name
        row :address_1
        row :address_2
        row :city
        row :state
        row :zip
        row :rental
        row :building_pic
        row :info
        row :created_at
        row :updated_at
      end
    end
  end

  form do |f|
    f.inputs "Feature Building" do
      f.input :name
      f.input :address_1
      f.input :address_2
      f.input :city
      f.input :state
      f.input :zip
      f.input :rental
      f.input :building_pic, as: :file
      f.input :info, :as => :text, :input_html => { :class => 'autogrow', :rows => 10}
    end
    f.buttons
  end



end
