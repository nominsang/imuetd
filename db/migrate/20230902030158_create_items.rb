class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :creator
      t.string :department
      t.references :teacher, null: false, foreign_key: true
      t.string :language
      t.datetime :date_submitted
      t.datetime :date_replied
      t.string :format_extent_mime
      t.integer :format_extent_page
      t.string :type
      t.string :rights_location
      t.string :rights_security_classification
      t.string :rights_access_rights
      t.string :degree_category
      t.string :degree_grantor
      t.string :degree_descipline
      t.string :degree_level

      t.timestamps
    end
  end
end
