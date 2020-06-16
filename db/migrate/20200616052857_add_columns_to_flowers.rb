class AddColumnsToFlowers < ActiveRecord::Migration[5.2]
  def change
    add_column :flowers, :user_id, :integer
    add_column :flowers, :content, :string
  end
end
