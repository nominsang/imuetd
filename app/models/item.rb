class Item < ApplicationRecord
  after_initialize :set_default_value

  belongs_to :teacher
  has_many :abstracts
  has_many :keywords
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "creator", "date_replied", "date_submitted", "degree_category", "degree_descipline", "degree_grantor", "degree_level", "department", "format_extent_mime", "format_extent_page", "id", "language", "rights_access_rights", "rights_location", "rights_security_classification", "teacher_id", "title", "type", "updated_at"]
  end
  def self.ransackable_associations(auth_object = nil)
    ["abstracts", "keywords", "teacher"]
  end

  protected
  def set_default_value
    self.degree_grantor ||= "内蒙古大学"
    self.degree_level ||= "硕士"
    self.degree_category ||= "学术学位"
    self.language ||= "汉语"
    self.format_extent_mime ||= "PDF"
    self.rights_location ||= "内蒙古大学图书馆"
    self.rights_access_rights ||= "仅限校园网"
    self.date_replied ||= Date.today
    self.date_submitted ||= Date.today
  end
end
