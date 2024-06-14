class CreateNameTagLogos < ActiveRecord::Migration[7.1]
  def change
    create_table :name_tag_logos do |t|
      t.references :name_tag, null: false, foreign_key: true
      t.references :logo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
