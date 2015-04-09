class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.text :text

      t.timestamps null: false
    end
  end
end
