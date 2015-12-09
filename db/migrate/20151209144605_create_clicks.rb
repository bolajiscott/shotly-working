class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.references :link, index: true
      t.inet :ip
      t.string :country
      t.string :referrer

      t.timestamps null: false
    end
  end
end
