class DropContactsTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :contacts
  end
end
