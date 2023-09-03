class Item < ApplicationRecord
  belongs_to :teacher
  has_many :abstracts
  has_many :keywords
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "creator", "date_replied", "date_submitted", "degree_category", "degree_descipline", "degree_grantor", "degree_level", "department", "format_extent_mime", "format_extent_page", "id", "language", "rights_access_rights", "rights_location", "rights_security_classification", "teacher_id", "title", "type", "updated_at"]
  end
  def self.ransackable_associations(auth_object = nil)
    ["abstracts", "keywords", "teacher"]
  end

end
