class CreateFlowers < ActiveRecord::Migration[5.2]
  def change
    create_table :flowers do |t|
      t.column(:title, :string)
      t.column(:price, :integer)
    end
  end
end
