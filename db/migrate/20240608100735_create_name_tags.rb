class CreateNameTags < ActiveRecord::Migration[7.1]
  def change
    create_table :name_tags do |t|
      t.boolean :publicity, default: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
