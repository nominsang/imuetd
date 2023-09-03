class CreateTocs < ActiveRecord::Migration[7.0]
  def change
    create_table :tocs do |t|
      t.references :item, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
