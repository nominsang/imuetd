ActiveAdmin.register Item do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :creator, :department, :teacher_id, :language, :date_submitted, :date_replied, :format_extent_mime, :format_extent_page, :type, :rights_location, :rights_security_classification, :rights_access_rights, :degree_category, :degree_grantor, :degree_descipline, :degree_level
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :creator, :department, :teacher_id, :language, :date_submitted, :date_replied, :format_extent_mime, :format_extent_page, :type, :rights_location, :rights_security_classification, :rights_access_rights, :degree_category, :degree_grantor, :degree_descipline, :degree_level]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
