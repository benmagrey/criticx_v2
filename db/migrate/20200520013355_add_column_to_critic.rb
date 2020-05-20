class AddColumnToCritic < ActiveRecord::Migration[6.0]
  def up
    add_column :critics, :title, :string
  end

  def down
    remove_column :critics, :title, :string
  end
end
