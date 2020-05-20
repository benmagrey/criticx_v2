class ChangeCompanyRefToGames < ActiveRecord::Migration[6.0]
  def change
    change_column_null :games, :company_id, true
  end
end
