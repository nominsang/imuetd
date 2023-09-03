class Abstract < ApplicationRecord
  belongs_to :item
  def self.ransackable_attributes(auth_object = nil)
    ["content", "created_at", "id", "item_id", "language", "updated_at"]
  end
end
