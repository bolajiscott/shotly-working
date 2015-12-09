class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :short_url
      t.string :url
      t.boolean :active, default: true
      t.boolean :deleted, default: false
      t.references :user, index: true
      t.integer :clicks_count, default: 0

      t.timestamps null: false
    end

    add_index :links, :short_url, unique: true
  end
end
