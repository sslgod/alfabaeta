class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :url
      t.string :image
      t.boolean :public
      t.text :about
      t.integer :price
      t.integer :seats
      t.text :winner

      t.timestamps
    end
  end
end
