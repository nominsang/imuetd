class Teacher < ApplicationRecord
  has_many :items
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "institution", "intro", "name", "updated_at"]
  end
  def self.ransackable_associations(auth_object = nil)
    ["items"]
  end
end
