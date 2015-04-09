class CreatePresses < ActiveRecord::Migration
  def change
    create_table :presses do |t|
      t.string :name
      t.string :link

      t.timestamps null: false
    end
  end
end
