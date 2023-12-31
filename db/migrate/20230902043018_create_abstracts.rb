class CreateAbstracts < ActiveRecord::Migration[7.0]
  def change
    create_table :abstracts do |t|
      t.references :item, null: false, foreign_key: true
      t.string :language
      t.text :content

      t.timestamps
    end
  end
end
