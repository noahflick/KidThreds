class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description
      t.string :size
      t.string :gender
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
