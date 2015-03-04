class CreateProcats < ActiveRecord::Migration
  def change
    create_table :procats do |t|
      t.references :project, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
