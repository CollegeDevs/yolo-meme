class AddOwnerToAccesses < ActiveRecord::Migration
  def change
    add_column :accesses, :owner, :boolean
  end
end
