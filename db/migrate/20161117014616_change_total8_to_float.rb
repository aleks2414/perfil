class ChangeTotal8ToFloat < ActiveRecord::Migration
  def change
    change_column :tests, :l8total, :float
  end
end
