class AlternativeTitle < ApplicationRecord
  belongs_to :item
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "item_id", "language", "title", "updated_at"]
  end
end
