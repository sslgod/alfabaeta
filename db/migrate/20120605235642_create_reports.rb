class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.integer :site_id
      t.string :filename
      t.text :comment

      t.timestamps
    end
  end
end
