class CreateReferences < ActiveRecord::Migration[7.0]
  def change
    create_table :references do |t|
      t.references :item, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
