class ChangeTotal1ToFloat < ActiveRecord::Migration
  def change
    change_column :tests, :l1total, :float
  end
end
