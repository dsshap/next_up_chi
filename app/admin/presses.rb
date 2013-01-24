ActiveAdmin.register Press do
  menu :label => "Press"

  index do
    column :title
    column :created_at
    default_actions
  end

  show title: :title do
    panel "Details" do
      attributes_table_for press do
        row :title
        row :snippet
        row :link
        row :press_pic
        row :created_at
        row :updated_at
      end
    end
  end

  form do |f|
    f.inputs "Press" do
      f.input :title
      f.input :snippet, :as => :text, :input_html => { :class => 'autogrow', :rows => 10}
      f.input :link
      f.input :press_pic, as: :file
    end
    f.buttons
  end

end
