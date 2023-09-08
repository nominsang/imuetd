ActiveAdmin.register Item do
  
  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs "作者信息" do           # builds an input field for every attribute
      f.input :creator
      f.input :department
    end
    f.inputs "论文信息" do
      f.input :title
      f.input :language, :as => :select, :collection => ["汉语", "传统蒙古语", "基里尔蒙古语"]
      f.input :format_extent_mime, :hint => "PDF"
      f.input :format_extent_page
      f.input :type
      f.input :date_submitted
      f.input :date_replied
    end
    f.inputs "学位授予信息" do
      f.input :degree_category, :as => :select, :collection => ["学术学位", "专业学位"]
      f.input :degree_level, :as => :select, :collection => ["硕士", "博士"]
      f.input :degree_grantor, :hint => "内蒙古大学"
      f.input :degree_descipline
    end
    f.inputs "权限信息" do
      f.input :rights_location
      f.input :rights_security_classification
      f.input :rights_access_rights
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :creator, :department, :teacher_id, :language, :date_submitted, :date_replied, :format_extent_mime, :format_extent_page, 
    :type, :rights_location, :rights_security_classification, :rights_access_rights, :degree_category, :degree_grantor, :degree_descipline,
    :degree_level
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :creator, :department, :teacher_id, :language, :date_submitted, :date_replied, :format_extent_mime, :format_extent_page, :type, :rights_location, :rights_security_classification, :rights_access_rights, :degree_category, :degree_grantor, :degree_descipline, :degree_level]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
