class AddColumnToCritic < ActiveRecord::Migration[6.0]
  def change
    change_column :critics, :title, :string
  end
end
