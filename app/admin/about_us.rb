ActiveAdmin.register AboutUs do
  actions :index, :show, :edit, :update

  controller do

    def index
      redirect_to admin_about_u_path(get_page)
    end

    def get_page
      @about_us = AboutUs.get_page
    end

  end

  show title: "About Us Page" do
    panel "Details" do
      attributes_table_for about_us do
        row :title
        row :info
        row :realtor_name
        row :realtor_bio
        row :realtor_email
        row :realtor_phone
        row :realtor_picture
        row :updated_at
      end
    end
  end

  form do |f|
    f.inputs "Recipe" do
      f.input :title
      f.input :info, :as => :text, :input_html => { :class => 'autogrow', :rows => 10}
      f.input :realtor_name
      f.input :realtor_bio, :as => :text, :input_html => { :class => 'autogrow', :rows => 10}
      f.input :realtor_email
      f.input :realtor_phone
      f.input :realtor_picture, as: :file
    end

  end

end
