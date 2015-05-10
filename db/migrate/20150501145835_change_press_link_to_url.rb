class ChangePressLinkToUrl < ActiveRecord::Migration
  def change
    rename_column :presses, :link, :url
  end
end
