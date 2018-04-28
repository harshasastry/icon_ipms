class AddNameToFloor < ActiveRecord::Migration[5.1]
  def change
    add_column :floors, :name, :string
  end
end
