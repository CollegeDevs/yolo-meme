class RemoveOwnerFromAccesses < ActiveRecord::Migration
  def change
    remove_column :accesses, :owner, :boolean
  end
end
